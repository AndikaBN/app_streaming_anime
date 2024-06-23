import 'package:app_stream_anime/data/model/response/episodes_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../episodes_bloc/episodes_bloc.dart';

class UpdateEpisode extends StatefulWidget {
  const UpdateEpisode({
    super.key,
    required this.seriesId,
    required this.id,
    required this.episode,
  });

  final int seriesId;
  final int id;
  final Episodes episode;

  @override
  State<UpdateEpisode> createState() => _UpdateEpisodeState();
}

class _UpdateEpisodeState extends State<UpdateEpisode> {
  late TextEditingController nomorEpisodeController = TextEditingController();
  late TextEditingController titleController = TextEditingController();
  late TextEditingController videoController = TextEditingController();

  @override
  initState() {
    super.initState();
    nomorEpisodeController =
        TextEditingController(text: widget.episode.nomorEpisode);
    titleController = TextEditingController(text: widget.episode.title);
    videoController = TextEditingController(text: widget.episode.video);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Update Episode"),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nomor Episode',
                border: OutlineInputBorder(),
              ),
              controller: nomorEpisodeController,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'URL Video'),
              controller: videoController,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Batal'),
        ),
        TextButton(
          onPressed: () {
            context.read<EpisodesBloc>().add(
                  EpisodesEvent.updateEpisode(
                    seriesId: widget.seriesId,
                    id: widget.id,
                    nomorEpisode: nomorEpisodeController.text,
                    title: titleController.text,
                    videoUrl: videoController.text,
                  ),
                );
            Navigator.of(context).pop();
          },
          child: const Text('Simpan'),
        ),
      ],
    );
  }
}
