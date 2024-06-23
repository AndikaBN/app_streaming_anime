part of 'delete_episode_bloc.dart';

@freezed
class DeleteEpisodeEvent with _$DeleteEpisodeEvent {
  const factory DeleteEpisodeEvent.started() = _Started;
  const factory DeleteEpisodeEvent.deleteEpisode({
    required int seriesId,
    required int episodeId,
  }) = _DeleteEpisode;
}