part of 'delete_episode_bloc.dart';

@freezed
class DeleteEpisodeState with _$DeleteEpisodeState {
  const factory DeleteEpisodeState.initial() = _Initial;
  const factory DeleteEpisodeState.loading() = _Loading;
  const factory DeleteEpisodeState.success() = _Success;
  const factory DeleteEpisodeState.error(String message) = _Error;
}
