import 'package:app_stream_anime/admin/view/Series/pages/tambah_episode.dart';
import 'package:app_stream_anime/admin/view/Series/pages/update_episode.dart';
import 'package:app_stream_anime/constant/fonts.dart';
import 'package:app_stream_anime/data/model/response/episodes_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/response/series_response_model.dart';
import '../delete_episode/delete_episode_bloc.dart';
import '../episodes_bloc/episodes_bloc.dart';
import 'hapus_episode.dart';

class DetailSeries extends StatefulWidget {
  const DetailSeries({
    Key? key,
    required this.series,
  }) : super(key: key);

  final Series series;

  @override
  State<DetailSeries> createState() => _DetailSeriesState();
}

class _DetailSeriesState extends State<DetailSeries> {
  Episodes? currentEpisode;
  Series? series;

  @override
  void initState() {
    super.initState();
    context
        .read<EpisodesBloc>()
        .add(EpisodesEvent.getEpisodes(seriesId: widget.series.id!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.series.title!, style: whiteTextStyle),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<EpisodesBloc, EpisodesState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => Center(
                        child: Text("Tidak Ada Episode",
                            style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (message) => Center(child: Text(message)),
                      loaded: (episodes) {
                        return Column(
                          children: [
                            const SizedBox(height: 20),
                            Text(widget.series.title!,
                                style: whiteTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(height: 10),
                            Text(widget.series.description!,
                                style: whiteTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(height: 20),
                            Text('Episodes',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: episodes.length,
                              itemBuilder: (context, index) {
                                final episode = episodes[index];
                                return ListTile(
                                  title: Text(episode.title!),
                                  subtitle:
                                      Text('Episode ${episode.nomorEpisode}'),
                                  onTap: () {},
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.edit,
                                            color: Colors.blue),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return UpdateEpisode(
                                                episode: episode,
                                                id: episode.id!,
                                                seriesId: widget.series.id!,
                                              );
                                            },
                                          );
                                        },
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.delete,
                                            color: Colors.red),
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return HapusEpisode(
                                                seriesId: widget.series.id!,
                                                episodeId: episode.id!,
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return FormAddEpisode(seriesId: widget.series.id!);
                  },
                );
                // print("ini adalah id dari anime ini: ${widget.series.id!}");
              },
              child: Text('Add Episode',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ));
  }
}
