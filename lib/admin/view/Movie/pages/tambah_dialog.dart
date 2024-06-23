import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/response/genre_response_model.dart';
import '../../Genre/bloc/bloc/get_genre_bloc.dart';
import '../bloc/create_movie/create_movie_bloc.dart';

class TambahFilmDialog extends StatefulWidget {
  @override
  _TambahFilmDialogState createState() => _TambahFilmDialogState();
}

class _TambahFilmDialogState extends State<TambahFilmDialog> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController statusController = TextEditingController();
  final TextEditingController videoController = TextEditingController();

  Genre? selectedGenre;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetGenreBloc, GetGenreState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: CircularProgressIndicator()),
          loaded: (genres) => AlertDialog(
            title: Text("Tambah Film"),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(labelText: 'Judul'),
                  ),
                  DropdownButtonFormField<Genre>(
                    items: genres.map((genre) {
                      return DropdownMenuItem<Genre>(
                        value: genre,
                        child: Text(genre.name ?? ''),
                      );
                    }).toList(),
                    onChanged: (Genre? selected) {
                      setState(() {
                        selectedGenre = selected;
                      });
                    },
                    decoration: InputDecoration(labelText: 'Genre'),
                  ),
                  TextFormField(
                    controller: imageController,
                    decoration: InputDecoration(labelText: 'URL Gambar'),
                  ),
                  TextFormField(
                    controller: descriptionController,
                    decoration: InputDecoration(labelText: 'Deskripsi'),
                  ),
                  //create dropdown button for status
                  DropdownButtonFormField<String>(
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
                    decoration: InputDecoration(labelText: 'Status'),
                  ),

                  TextFormField(
                    controller: videoController,
                    decoration: InputDecoration(labelText: 'URL Video'),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Batal'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('Tambah'),
                onPressed: () {
                  if (selectedGenre != null) {
                    context.read<CreateMovieBloc>().add(
                          CreateMovieEvent.create(
                            title: titleController.text,
                            genreId: selectedGenre!
                                .id!, // Pastikan genreId adalah int dan valid
                            image: imageController.text,
                            description: descriptionController.text,
                            status: statusController.text,
                            video: videoController.text,
                          ),
                        );
                    Navigator.of(context).pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Genre harus dipilih')),
                    );
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
