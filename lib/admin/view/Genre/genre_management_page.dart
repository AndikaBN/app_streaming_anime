// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/response/genre_response_model.dart';
import 'bloc/bloc/get_genre_bloc.dart';

class GenreManagementPage extends StatefulWidget {
  const GenreManagementPage({Key? key}) : super(key: key);

  @override
  State<GenreManagementPage> createState() => _GenreManagementPageState();
}

class _GenreManagementPageState extends State<GenreManagementPage> {
  @override
  void initState() {
    super.initState();
    _fetchGenres();
  }

  void _fetchGenres() {
    context.read<GetGenreBloc>().add(const GetGenreEvent.getGenres());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<GetGenreBloc, GetGenreState>(
        listener: (context, state) {
          state.maybeWhen(
            addSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Genre berhasil ditambahkan')),
              );
            },
            updateSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Genre berhasil diperbarui')),
              );
            },
            deleteSuccess: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Genre berhasil dihapus')),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: Text('Tidak ada data genre.'),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (error) {
              return Center(
                child: Text(error),
              );
            },
            loaded: (genres) {
              return ListView.builder(
                itemCount: genres.length,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = genres[index];
                  return Container(
                    key: ValueKey(item.id), // Assigning a unique key
                    height: 100,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            icon: const Icon(Icons.edit),
                            label: const Text("Update"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              _showUpdateGenreDialog(context, item);
                            },
                          ),
                          Text(
                            item.name ?? 'Genre tidak dikenal',
                            style: whiteTextStyle,
                          ),
                          ElevatedButton.icon(
                            icon: const Icon(Icons.delete),
                            label: const Text("Delete"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              context
                                  .read<GetGenreBloc>()
                                  .add(GetGenreEvent.deleteGenre(id: item.id!));
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddGenreDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddGenreDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String? newGenreName;
        return AlertDialog(
          title: const Text("Tambah Genre Baru"),
          content: TextField(
            onChanged: (value) {
              newGenreName = value;
            },
            decoration: const InputDecoration(hintText: "Nama Genre"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("Batal"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Tambah"),
              onPressed: () {
                if (newGenreName != null && newGenreName!.isNotEmpty) {
                  context
                      .read<GetGenreBloc>()
                      .add(GetGenreEvent.addGenre(name: newGenreName!));
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  void _showUpdateGenreDialog(BuildContext context, Genre item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String? updatedGenreName = item.name;
        return AlertDialog(
          title: const Text("Perbarui Genre"),
          content: TextFormField(
            initialValue: updatedGenreName,
            onChanged: (value) {
              updatedGenreName = value;
            },
            decoration: const InputDecoration(hintText: "Nama Genre"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("Batal"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Perbarui"),
              onPressed: () {
                if (updatedGenreName != null && updatedGenreName!.isNotEmpty) {
                  context.read<GetGenreBloc>().add(GetGenreEvent.updateGenre(
                        id: item.id!,
                        name: updatedGenreName!,
                      ));
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }
}
