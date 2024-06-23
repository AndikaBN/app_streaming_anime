import 'package:app_stream_anime/data/datasource/episode_remote_datasource.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_episode_event.dart';
part 'delete_episode_state.dart';
part 'delete_episode_bloc.freezed.dart';

class DeleteEpisodeBloc extends Bloc<DeleteEpisodeEvent, DeleteEpisodeState> {
  final EpisodeRemoteDatasource episodeRemoteDatasource;
  DeleteEpisodeBloc(this.episodeRemoteDatasource) : super(const _Initial()) {
    on<_DeleteEpisode>((event, emit) async {
      emit(const _Loading());
      final result = await episodeRemoteDatasource.deleteEpisode(
        event.seriesId,
        event.episodeId,
      );
      result.fold(
        (error) => emit(_Error(error)),
        (_) => emit(const _Success()),
      );
    });
  }
}
