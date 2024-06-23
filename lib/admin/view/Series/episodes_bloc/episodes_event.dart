part of 'episodes_bloc.dart';

@freezed
class EpisodesEvent with _$EpisodesEvent {
  const factory EpisodesEvent.started() = _Started;
  const factory EpisodesEvent.getEpisodes({
    required int seriesId,
  }) = _GetEpisodes;
  const factory EpisodesEvent.addEpisode({
    required int seriesId,
    required String nomorEpisode,
    required String title,
    required String videoUrl,
  }) = _AddEpisode;
  const factory EpisodesEvent.updateEpisode({
    required int seriesId,
    required int id,
    required String nomorEpisode,
    required String title,
    required String videoUrl,
  }) = _UpdateEpisode;
}