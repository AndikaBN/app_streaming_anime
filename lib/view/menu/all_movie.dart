// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/view/home/detail_movie_home.dart';
import 'package:app_stream_anime/widget/card_item.dart';
import 'package:app_stream_anime/widget/space.dart';
import 'package:flutter/material.dart';

import '../../data/model/anime_movie.dart';

class AllMovie extends StatefulWidget {
  const AllMovie({super.key});

  @override
  State<AllMovie> createState() => _AllMovieState();
}

class _AllMovieState extends State<AllMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            const SpaceHeight(10),
            GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2 / 3,
                crossAxisCount: 3,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
              itemCount: animeList.length,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var item = animeList[index];
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
                    image: item.image,
                    title: item.title,
                    genre: item.genre,
                    status: item.status,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
