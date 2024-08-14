import 'package:app_stream_anime/admin/view/Series/episodes_bloc/episodes_bloc.dart';
import 'package:app_stream_anime/constant/fonts.dart';
import 'package:app_stream_anime/widget/space.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

import '../../../../data/model/response/episodes_response_model.dart';

class DetailEpisode extends StatefulWidget {
  const DetailEpisode({
    super.key,
    required this.episodes,
  });

  final Episodes episodes;

  @override
  State<DetailEpisode> createState() => _DetailEpisodeState();
}

class _DetailEpisodeState extends State<DetailEpisode> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(widget.episodes.video!),
    );
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
        child: BlocBuilder<EpisodesBloc, EpisodesState>(
          builder: (context, state) {
            return Column(
              children: [
                FlickVideoPlayer(flickManager: flickManager),
                const SpaceHeight(20),
                Text(
                  "${widget.episodes.nomorEpisode} : ${widget.episodes.title}",
                  style: whiteTextStyle,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
