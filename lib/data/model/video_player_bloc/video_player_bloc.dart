import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';

part 'video_player_event.dart';
part 'video_player_state.dart';
part 'video_player_bloc.freezed.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc() : super(const _Initial()) {
    on<_LoadVideo>((event, emit) {
      final controller = VideoPlayerController.network(event.videoUrl);
      controller.initialize().then((_) {
        emit(_Loaded(controller));
      });
    });
  }
}
