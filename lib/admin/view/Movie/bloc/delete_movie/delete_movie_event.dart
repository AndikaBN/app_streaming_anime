part of 'delete_movie_bloc.dart';

@freezed
class DeleteMovieEvent with _$DeleteMovieEvent {
  const factory DeleteMovieEvent.started() = _Started;
  const factory DeleteMovieEvent.delete({
    required int id,
  }) = _DeleteMovie;
}