// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/widget/card_item.dart';
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
      body: GridView.builder(
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
          return CardItem(
            image: item.image,
            title: item.title,
            genre: item.genre,
            status: item.status,
          );
        },
      ),
    );
  }
}
