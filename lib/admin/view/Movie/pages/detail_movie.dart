// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/constant/fonts.dart';
import 'package:app_stream_anime/data/model/response/movie_response_model.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DetailMovie extends StatefulWidget {
  const DetailMovie({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  State<DetailMovie> createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> {
  late FlickManager flickManager;
  bool isFlickManagerInitialized = false;

  @override
  void initState() {
    super.initState();
    if (widget.movie.video != null) {
      flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.network(
          widget.movie.video!,
        ),
      );
      setState(() {
        isFlickManagerInitialized = true;
      });
    } else {
      // Handle the case where the video URL is null
      isFlickManagerInitialized = false;
    }
  }

  @override
  void dispose() {
    if (isFlickManagerInitialized) {
      flickManager.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                if (isFlickManagerInitialized)
                  FlickVideoPlayer(flickManager: flickManager)
                else
                  Center(
                      child: Text(
                    'No video available',
                    style: whiteTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                const SizedBox(height: 10),
                Text(
                  widget.movie.title!,
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.movie.description!,
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
