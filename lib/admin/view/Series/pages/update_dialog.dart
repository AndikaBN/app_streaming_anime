// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/admin/view/Series/series_bloc/series_bloc.dart';
import 'package:app_stream_anime/data/model/response/series_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateSeriesDialog extends StatefulWidget {
  const UpdateSeriesDialog({
    super.key,
    required this.series,
  });

  final Series series;

  @override
  State<UpdateSeriesDialog> createState() => _UpdateSeriesDialogState();
}

class _UpdateSeriesDialogState extends State<UpdateSeriesDialog> {
  late TextEditingController titleController = TextEditingController();
  late TextEditingController imageController = TextEditingController();
  late TextEditingController descriptionController = TextEditingController();
  late TextEditingController statusController = TextEditingController();
  late TextEditingController genreIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.series.title);
    genreIdController =
        TextEditingController(text: widget.series.genreId.toString());
    imageController = TextEditingController(text: widget.series.image);
    descriptionController =
        TextEditingController(text: widget.series.description);
    statusController =
        TextEditingController(text: widget.series.status.toString());
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Update Series"),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(labelText: 'Judul'),
            ),
            TextFormField(
              controller: genreIdController,
              decoration: const InputDecoration(labelText: 'Genre ID'),
            ),
            TextFormField(
              controller: imageController,
              decoration: const InputDecoration(labelText: 'URL Gambar'),
            ),
            TextFormField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: 'Deskripsi'),
            ),
            DropdownButtonFormField(
              items: ['OnGoing', 'End'].map((status) {
                return DropdownMenuItem(
                  value: status,
                  child: Text(status),
                );
              }).toList(),
              onChanged: (String? selected) {
                setState(() {
                  statusController.text = selected!;
                });
              },
              value: statusController.text,
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
            // Add update series function here
            context.read<SeriesBloc>().add(
                  SeriesEvent.updateSeries(
                    id: widget.series.id!,
                    title: titleController.text,
                    genreId: int.parse(genreIdController.text),
                    image: imageController.text,
                    description: descriptionController.text,
                    status: statusController.text,
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
