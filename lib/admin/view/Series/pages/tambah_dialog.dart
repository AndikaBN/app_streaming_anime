// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/admin/view/Genre/bloc/bloc/get_genre_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/response/genre_response_model.dart';
import '../series_bloc/series_bloc.dart';

class TambahSeriesDialog extends StatefulWidget {
  const TambahSeriesDialog({Key? key}) : super(key: key);

  @override
  State<TambahSeriesDialog> createState() => _TambahSeriesDialogState();
}

class _TambahSeriesDialogState extends State<TambahSeriesDialog> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController statusController = TextEditingController();

  Genre? selectedGenre;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetGenreBloc, GetGenreState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: CircularProgressIndicator()),
          loaded: (genres) => AlertDialog(
            title: const Text("Tambah Series"),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    controller: titleController,
                    decoration: const InputDecoration(labelText: 'Judul'),
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
                    decoration: const InputDecoration(labelText: 'URL Gambar'),
                  ),
                  TextFormField(
                    controller: descriptionController,
                    decoration: const InputDecoration(labelText: 'Deskripsi'),
                  ),
                  //create dropdown button for status
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
                    decoration: const InputDecoration(labelText: 'Status'),
                  )
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
                  if (selectedGenre != null) {
                    context.read<SeriesBloc>().add(
                          SeriesEvent.addSeries(
                            title: titleController.text,
                            genreId: selectedGenre!.id!,
                            image: imageController.text,
                            description: descriptionController.text,
                            status: statusController.text,
                          ),
                        );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Genre harus dipilih"),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }

                  Navigator.of(context).pop();
                },
                child: const Text('Tambah'),
              ),
            ],
          ),
        );
      },
    );
  }
}
