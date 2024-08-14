// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/admin/view/Genre/bloc/bloc/get_genre_bloc.dart';
import 'package:app_stream_anime/admin/view/Movie/bloc/movie/movie_bloc.dart';
import 'package:app_stream_anime/data/model/response/genre_response_model.dart';
import 'package:app_stream_anime/view/home/detail_movie_home.dart';
import 'package:app_stream_anime/widget/card_item.dart';
import 'package:app_stream_anime/widget/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllMovie extends StatefulWidget {
  const AllMovie({super.key});

  @override
  State<AllMovie> createState() => _AllMovieState();
}

class _AllMovieState extends State<AllMovie> {
  List<Genre> genres = [];
  
  @override
  void initState() {
    super.initState();
    context.read<MovieBloc>().add(const MovieEvent.getMovies());
    context.read<GetGenreBloc>().add(const GetGenreEvent.getGenres());
  }

  String getGenreName(int genreId) {
    final genre = genres.firstWhere((genre) => genre.id == genreId,
        orElse: () => Genre(name: 'Unknown'));
    return genre.name!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            const SpaceHeight(10),
            BlocBuilder<GetGenreBloc, GetGenreState>(
              builder: (context, genreState) {
                return genreState.maybeWhen(
                  orElse: () => const Center(child: Text('Tidak ada data genre')),
                  loading: () => const Center(child: CircularProgressIndicator()),
                  loaded: (genreList) {
                    genres = genreList; // Mengisi genres saat data genre berhasil dimuat
                    return BlocBuilder<MovieBloc, MovieState>(
                      builder: (context, movieState) {
                        return movieState.maybeWhen(
                          orElse: () => const Center(child: Text('Tidak ada data')),
                          loading: () => const Center(child: CircularProgressIndicator()),
                          loaded: (movieList) {
                            return GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 2 / 3,
                                crossAxisCount: 3,
                                mainAxisSpacing: 6,
                                crossAxisSpacing: 6,
                              ),
                              itemCount: movieList.length,
                              shrinkWrap: true,
                              physics: const ScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                var item = movieList[index];
                                var genre = getGenreName(item.genreId!);
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailHome(
                                          animeMovie: item,
                                        ),
                                      ),
                                    );
                                  },
                                  child: CardItem(
                                    height: 160,
                                    width: 100,
                                    image: item.image!,
                                    title: item.title!,
                                    genre: genre,
                                    status: item.status!,
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
