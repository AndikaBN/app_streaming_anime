import 'package:app_stream_anime/constant/colors.dart';
import 'package:app_stream_anime/data/model/anime_series.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../constant/fonts.dart';

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
  late String currentEpisodeTitle;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
        widget.animeSeries.episode[0].video,
      ),
    );
    currentEpisodeTitle = widget.animeSeries.episode[0].title;
  }

  void updateVideo(String videoUrl, String episodeTitle) {
    setState(() {
      flickManager.handleChangeVideo(
        VideoPlayerController.network(videoUrl)
          ..initialize().then((_) {
            flickManager.flickControlManager?.play();
            setState(() {
              currentEpisodeTitle = episodeTitle;
            });
          }),
      );
    });
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
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
              widget.animeSeries.title + ': ' + currentEpisodeTitle,
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.animeSeries.genre,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.animeSeries.description,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.animeSeries.status,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, // Menentukan jumlah kolom
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 2, // Menentukan rasio aspek item grid
                ),
                itemCount: widget.animeSeries.episode.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      updateVideo(
                        widget.animeSeries.episode[index].video,
                        widget.animeSeries.episode[index].title,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          widget.animeSeries.episode[index].nomorEpisode
                              .toString(),
                          style: whiteTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                    ),
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
