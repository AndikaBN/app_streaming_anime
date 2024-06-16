// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:app_stream_anime/data/model/anime_series.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DetailSeries extends StatefulWidget {
  const DetailSeries({
    super.key,
    required this.animeSeries,
  });

  final AnimeSeries animeSeries;

  @override
  State<DetailSeries> createState() => _DetailSeriesState();
}

class _DetailSeriesState extends State<DetailSeries> {
  late FlickManager flickManager;

  @override
  initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse(widget.animeSeries.episode[0].video),
    ));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FlickVideoPlayer(flickManager: flickManager),
            const SizedBox(height: 10),
            Text(
              widget.animeSeries.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.animeSeries.genre,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.animeSeries.description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.animeSeries.status,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: widget.animeSeries.episode.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.animeSeries.episode[index].title),
                    onTap: () {
                      flickManager = FlickManager(
                          videoPlayerController:
                              VideoPlayerController.networkUrl(
                        Uri.parse(widget.animeSeries.episode[index].video),
                      ));
                      setState(() {});
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
