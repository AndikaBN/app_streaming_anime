import 'package:app_stream_anime/constant/fonts.dart';
import 'package:flutter/material.dart';
import '../../data/model/anime_movie.dart';


class DetailHome extends StatefulWidget {
  const DetailHome({
    super.key,
    required this.animeMovie,
  });

  final AnimeMovie animeMovie;

  @override
  State<DetailHome> createState() => _DetailHomeState();
}

class _DetailHomeState extends State<DetailHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                widget.animeMovie.title,
                style: whiteTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.animeMovie.genre,
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(widget.animeMovie.image),
              Text(widget.animeMovie.description,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                widget.animeMovie.video,
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
