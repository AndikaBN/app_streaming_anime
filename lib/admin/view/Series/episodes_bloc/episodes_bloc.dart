// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasource/episode_remote_datasource.dart';
import '../../../../data/model/response/episodes_response_model.dart';

part 'episodes_event.dart';
part 'episodes_state.dart';
part 'episodes_bloc.freezed.dart';

class EpisodesBloc extends Bloc<EpisodesEvent, EpisodesState> {
  final EpisodeRemoteDatasource episodeRemoteDatasource;
  EpisodesBloc(this.episodeRemoteDatasource) : super(const _Initial()) {
    on<_GetEpisodes>((event, emit) async {
      emit(const _Loading());
      final result = await episodeRemoteDatasource.getEpisode(event.seriesId);
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data.data!)),
      );
    });

    on<_AddEpisode>((event, emit) async {
      emit(const _Loading());
      final result = await episodeRemoteDatasource.addEpisode(
        event.seriesId,
        event.nomorEpisode,
        event.title,
        event.videoUrl,
      );
      result.fold(
        (error) => emit(_Error(error)),
        (_) => emit(const _Initial()),
      );
    });

    on<_UpdateEpisode>((event, emit) async {
      emit(const _Loading());
      final result = await episodeRemoteDatasource.updateEpisode(
        event.seriesId,
        event.id,
        event.nomorEpisode,
        event.title,
        event.videoUrl,
      );
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(const _Initial()),
      );
    });
  }
}
