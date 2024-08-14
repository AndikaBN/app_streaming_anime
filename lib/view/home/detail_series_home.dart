import 'package:app_stream_anime/constant/colors.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../admin/view/Series/episodes_bloc/episodes_bloc.dart';
import '../../constant/fonts.dart';
import '../../data/model/response/series_response_model.dart';

class DetailSeries extends StatefulWidget {
  const DetailSeries({
    super.key,
    required this.series,
  });

  final Series series;

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
      videoPlayerController: VideoPlayerController.network(''),
    );
    currentEpisodeTitle = '';
    context.read<EpisodesBloc>().add(EpisodesEvent.getEpisodes(seriesId: widget.series.id!));
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
              widget.series.title! + ': ' + currentEpisodeTitle,
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.series.status!,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.series.description!,
              style: whiteTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            // Text(
            //   widget.series.status,
            //   style: whiteTextStyle.copyWith(
            //     fontSize: 16,
            //   ),
            // ),
            const SizedBox(height: 10),
            Expanded(
              child: BlocBuilder<EpisodesBloc, EpisodesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(child: Text('Tidak ada episode')),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    loaded: (episodes) {
                      return GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 5,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 2,
                        ),
                        itemCount: episodes.length,
                        itemBuilder: (context, index) {
                          var episode = episodes[index];
                          return GestureDetector(
                            onTap: () {
                              updateVideo(episode.video!, episode.title!);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  episode.nomorEpisode!,
                                  style: whiteTextStyle.copyWith(fontSize: 16),
                                ),
                              ),
                            ),
                          );
                        },
                      );
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
