part of 'create_movie_bloc.dart';

@freezed
class CreateMovieEvent with _$CreateMovieEvent {
  const factory CreateMovieEvent.started() = _Started;
  const factory CreateMovieEvent.create({
    required String title,
    required int genreId,
    required String image,
    required String description,
    required String status,
    required String video,
  }) = _CreateMovie;
}
