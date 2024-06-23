// File: movie_management_page.dart

import 'package:app_stream_anime/admin/view/Movie/pages/tambah_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/delete_movie/delete_movie_bloc.dart';
import 'bloc/movie/movie_bloc.dart';


import 'pages/detail_movie.dart';
import 'pages/update_dialog.dart';
// import 'pages/update_dialog.dart';

class MovieManagementPage extends StatefulWidget {
  const MovieManagementPage({Key? key}) : super(key: key);

  @override
  State<MovieManagementPage> createState() => _MovieManagementPageState();
}

class _MovieManagementPageState extends State<MovieManagementPage> {
  @override
  void initState() {
    super.initState();
    context.read<MovieBloc>().add(MovieEvent.getMovies());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MovieBloc, MovieState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(
                child: Text('Tidak ada data'),
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (e) {
              return Center(
                child: Text(e),
              );
            },
            loaded: (movies) {
              return ListView.builder(
                itemCount: movies.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = movies[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailMovie(movie: item),
                        ),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            item.image != null && item.image!.contains("http")
                                ? item.image!
                                : 'https://example.com/${item.image ?? ''}',
                          ),
                        ),
                        title: Text(item.title ?? 'Tanpa judul'),
                        subtitle: Text(item.status.toString()),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit, color: Colors.blue),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return UpdateFilmDialog(movie: item);
                                  },
                                );
                              },
                            ),
                            BlocListener<DeleteMovieBloc, DeleteMovieState>(
                              listener: (context, state) {
                                state.maybeWhen(
                                  orElse: () {},
                                  error: (e) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(e),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  },
                                  success: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text("Berhasil dihapus"),
                                        backgroundColor: Colors.green,
                                      ),
                                    );
                                  },
                                );
                              },
                              child: BlocBuilder<DeleteMovieBloc,
                                  DeleteMovieState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    orElse: () {
                                      return IconButton(
                                        icon: Icon(Icons.delete,
                                            color: Colors.red),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Text("Konfirmasi Hapus"),
                                                content: Text(
                                                    "Apakah Anda yakin ingin menghapus film ini?"),
                                                actions: [
                                                  TextButton(
                                                    child: Text("Batal"),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                  TextButton(
                                                    child: Text("Hapus"),
                                                    onPressed: () {
                                                      context
                                                          .read<
                                                              DeleteMovieBloc>()
                                                          .add(
                                                            DeleteMovieEvent
                                                                .delete(
                                                                    id: item
                                                                        .id!),
                                                          );
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                    loading: () {
                                      return const CircularProgressIndicator();
                                    },
                                    success: () {
                                      return IconButton(
                                        icon: Icon(Icons.delete,
                                            color: Colors.red),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Text("Konfirmasi Hapus"),
                                                content: Text(
                                                    "Apakah Anda yakin ingin menghapus film ini?"),
                                                actions: [
                                                  TextButton(
                                                    child: Text("Batal"),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                  TextButton(
                                                    child: Text("Hapus"),
                                                    onPressed: () {
                                                      context
                                                          .read<
                                                              DeleteMovieBloc>()
                                                          .add(
                                                            DeleteMovieEvent
                                                                .delete(
                                                                    id: item
                                                                        .id!),
                                                          );
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                ],
                                              );
                                            },
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
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return TambahFilmDialog();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
