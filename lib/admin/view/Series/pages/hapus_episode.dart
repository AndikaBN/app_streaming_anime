// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/admin/view/Series/delete_episode/delete_episode_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/response/episodes_response_model.dart';

class HapusEpisode extends StatefulWidget {
  const HapusEpisode({
    Key? key,
    required this.seriesId,
    required this.episodeId,
  }) : super(key: key);

  final int seriesId;
  final int episodeId;

  @override
  State<HapusEpisode> createState() => _HapusEpisodeState();
}

class _HapusEpisodeState extends State<HapusEpisode> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Delete Episode"),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Are you sure want to delete this episode?'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () {
            context.read<DeleteEpisodeBloc>().add(
                DeleteEpisodeEvent.deleteEpisode(
                    episodeId: widget.episodeId, seriesId: widget.seriesId));
            Navigator.of(context).pop();
          },
          child: const Text('Yes'),
        ),
      ],
    );
  }
}
