part of 'update_movie_bloc.dart';

@freezed
class UpdateMovieEvent with _$UpdateMovieEvent {
  const factory UpdateMovieEvent.started() = _Started;
  const factory UpdateMovieEvent.update({
    required int id,
    required String title,
    required int genreId,
    required String image,
    required String description,
    required String status,
    required String video,
  }) = _UpdateMovie;
}
