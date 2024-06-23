part of 'video_player_bloc.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.initial() = _Initial;
  const factory VideoPlayerState.loading() = _Loading;
  const factory VideoPlayerState.loaded(VideoPlayerController controller) =
      _Loaded;
  const factory VideoPlayerState.error(String message) = _Error;
}
