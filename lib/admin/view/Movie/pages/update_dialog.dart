import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/update_movie/update_movie_bloc.dart';
import '../../../../../data/model/response/movie_response_model.dart';

class UpdateFilmDialog extends StatefulWidget {
  final Movie movie;

  const UpdateFilmDialog({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  _UpdateFilmDialogState createState() => _UpdateFilmDialogState();
}

class _UpdateFilmDialogState extends State<UpdateFilmDialog> {
  late TextEditingController titleController;
  late TextEditingController genreIdController;
  late TextEditingController imageController;
  late TextEditingController descriptionController;
  late TextEditingController statusController;
  late TextEditingController videoController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.movie.title);
    genreIdController =
        TextEditingController(text: widget.movie.genreId?.toString());
    imageController = TextEditingController(text: widget.movie.image);
    descriptionController =
        TextEditingController(text: widget.movie.description);
    statusController =
        TextEditingController(text: widget.movie.status.toString());
    videoController = TextEditingController(text: widget.movie.video);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Update Movie"),
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
                return DropdownMenuItem<String>(
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
              decoration: const InputDecoration(labelText: 'Status'),
            ),
            TextFormField(
              controller: videoController,
              decoration: const InputDecoration(labelText: 'Video'),
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
            context.read<UpdateMovieBloc>().add(
                  UpdateMovieEvent.update(
                    id: widget.movie.id!,
                    title: titleController.text,
                    genreId: int.parse(genreIdController.text),
                    image: imageController.text,
                    description: descriptionController.text,
                    status: statusController.text,
                    video: videoController.text,
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
