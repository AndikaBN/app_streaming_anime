import 'package:app_stream_anime/admin/view/Genre/bloc/bloc/get_genre_bloc.dart';
import 'package:app_stream_anime/data/model/response/genre_response_model.dart';
import 'package:app_stream_anime/widget/card_item.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:app_stream_anime/widget/space.dart';

import '../../admin/view/Movie/bloc/movie/movie_bloc.dart';
import '../../admin/view/Series/series_bloc/series_bloc.dart';
import '../../constant/colors.dart';
import '../../constant/fonts.dart';
import 'detail_movie_home.dart';
import 'detail_series_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();
  List<Genre> genres = [];
  List<Genre> genresSeries = [];

  @override
  void initState() {
    super.initState();
    context.read<MovieBloc>().add(const MovieEvent.getMovies());
    context.read<SeriesBloc>().add(const SeriesEvent.getSeries());
    context.read<GetGenreBloc>().add(const GetGenreEvent.getGenres());
  }

  // Method to get genre name by ID
  String getGenreName(int genreId) {
    final genre = genres.firstWhere((genre) => genre.id == genreId, orElse: () => Genre(name: 'Unknown'));
    return genre.name!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.infinity,
              size: 40,
              shadows: [
                Shadow(
                  color: Colors.white,
                  offset: Offset(0, 0),
                  blurRadius: 5,
                ),
              ],
              color: AppColors.whiteColors,
            ),
            Text(
              'GodSlayerFlix.',
              style: textSplash.copyWith(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<GetGenreBloc, GetGenreState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(child: Text('Tidak ada genre')),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    loaded: (genreList) {
                      genres = genreList; // update the genres list
                      return BlocBuilder<MovieBloc, MovieState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () => const Center(child: Text('Tidak ada data')),
                            loading: () => Center(child: CircularProgressIndicator()),
                            loaded: (movies) {
                              var limitedMovies = movies.take(5).toList();
                              return Column(
                                children: [
                                  CarouselSlider(
                                    carouselController: carouselController,
                                    options: CarouselOptions(
                                      height: MediaQuery.of(context).size.height * 0.4,
                                      autoPlay: true,
                                      enlargeCenterPage: true,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          currentIndex = index;
                                        });
                                      },
                                    ),
                                    items: limitedMovies.map((movie) {
                                      var genre = getGenreName(movie.genreId!);
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => DetailHome(
                                                    animeMovie: movie,
                                                  ),
                                                ),
                                              );
                                            },
                                            child: CardItem(
                                              image: movie.image!,
                                              title: movie.title!,
                                              genre: genre,
                                              status: movie.status!,
                                              width: MediaQuery.of(context).size.width,
                                              height: 300,
                                            ),
                                          );
                                        },
                                      );
                                    }).toList(),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: limitedMovies.asMap().entries.map((entry) {
                                      return GestureDetector(
                                        onTap: () => carouselController.animateToPage(entry.key),
                                        child: Container(
                                          width: 12.0,
                                          height: 12.0,
                                          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: (Theme.of(context).brightness == Brightness.dark
                                                    ? AppColors.primary
                                                    : AppColors.primary.withOpacity(0.6))
                                                .withOpacity(currentIndex == entry.key ? 0.9 : 0.4),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
              const SpaceHeight(20.0),
              Text("List Anime Series", style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
              const SpaceHeight(20),
              SizedBox(
                height: 240.0,
                child: BlocBuilder<SeriesBloc, SeriesState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const Center(child: Text('Tidak ada data')),
                      loading: () => const Center(child: CircularProgressIndicator()),
                      loaded: (series) {
                        return ListView.builder(
                          itemCount: series.length,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          clipBehavior: Clip.none,
                          itemBuilder: (context, index) {
                            var item = series[index];
                            var genre = getGenreName(item.genreId!);
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailSeries(series: item),
                                  ),
                                );
                              },
                              child: CardItem(
                                height: 200,
                                width: 150,
                                image: item.image,
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
                ),
              ),
              const SpaceHeight(100),
            ],
          ),
        ),
      ),
    );
  }
}
