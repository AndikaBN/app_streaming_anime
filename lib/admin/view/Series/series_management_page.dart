// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:app_stream_anime/admin/view/Series/pages/detail_series.dart';
import 'package:app_stream_anime/admin/view/Series/pages/update_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/tambah_dialog.dart';
import 'series_bloc/series_bloc.dart';

class SeriesManagementPage extends StatefulWidget {
  const SeriesManagementPage({Key? key}) : super(key: key);

  @override
  State<SeriesManagementPage> createState() => _SeriesManagementPageState();
}

class _SeriesManagementPageState extends State<SeriesManagementPage> {
  @override
  void initState() {
    super.initState();
    context.read<SeriesBloc>().add(const SeriesEvent.getSeries());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SeriesBloc, SeriesState>(
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
            loaded: (series) {
              return ListView.builder(
                itemCount: series.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = series[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailSeries(series: item),
                        ),
                      );
                    },
                    child: Card(
                      child: ListTile(
                        title: Text(item.title!),
                        subtitle: Text(item.description!),
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: NetworkImage(
                            item.image != null && item.image!.contains("http")
                                ? item.image!
                                : 'https://example.com/${item.image ?? ''}',
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit, color: Colors.blue),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return UpdateSeriesDialog(series: item);
                                  },
                                );
                              },
                            ),
                            BlocBuilder<SeriesBloc, SeriesState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                  orElse: () {
                                    return IconButton(
                                      icon:
                                          Icon(Icons.delete, color: Colors.red),
                                      onPressed: () {
                                        context.read<SeriesBloc>().add(
                                              SeriesEvent.deleteSeries(
                                                  id: item.id!),
                                            );
                                      },
                                    );
                                  },
                                  loading: () {
                                    return const CircularProgressIndicator();
                                  },
                                  loaded: (series) {
                                    return IconButton(
                                      icon:
                                          Icon(Icons.delete, color: Colors.red),
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
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text("Hapus"),
                                                  onPressed: () {
                                                    context
                                                        .read<SeriesBloc>()
                                                        .add(
                                                          SeriesEvent
                                                              .deleteSeries(
                                                                  id: item.id!),
                                                        );
                                                    Navigator.of(context).pop();
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
                            )
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
              return const TambahSeriesDialog();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
