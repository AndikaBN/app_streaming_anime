part of 'video_player_bloc.dart';

@freezed
class VideoPlayerEvent with _$VideoPlayerEvent {
  const factory VideoPlayerEvent.started() = _Started;
  const factory VideoPlayerEvent.loadVideo({
    required String videoUrl,
  }) = _LoadVideo;
}