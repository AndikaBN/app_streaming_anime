import 'package:app_stream_anime/admin/view/Series/episodes_bloc/episodes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormAddEpisode extends StatefulWidget {
  final int seriesId;

  const FormAddEpisode({Key? key, required this.seriesId}) : super(key: key);

  @override
  State<FormAddEpisode> createState() => _FormAddEpisodeState();
}

class _FormAddEpisodeState extends State<FormAddEpisode> {
  final TextEditingController nomorEpisodeController = TextEditingController();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController videoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Tambah Episode"),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: nomorEpisodeController,
              decoration: const InputDecoration(
                labelText: 'Nomor Episode',
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextFormField(
              controller: videoController,
              decoration: const InputDecoration(labelText: 'URL Video'),
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
                  EpisodesEvent.addEpisode(
                    seriesId: widget
                        .seriesId, // Menggunakan widget.seriesId untuk mendapatkan seriesId
                    nomorEpisode: nomorEpisodeController.text,
                    title: titleController.text,
                    videoUrl: videoController.text,
                  ),
                );
            Navigator.of(context).pop();
          },
          child: const Text('Tambah'),
        ),
      ],
    );
  }
}
