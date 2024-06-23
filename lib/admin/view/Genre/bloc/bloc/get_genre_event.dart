part of 'get_genre_bloc.dart';

@freezed
class GetGenreEvent with _$GetGenreEvent {
  const factory GetGenreEvent.started() = _Started;
  const factory GetGenreEvent.getGenres() = _GetGenres;
  const factory GetGenreEvent.deleteGenre({
    required int id,
  }) = _DeleteGenre;
  const factory GetGenreEvent.addGenre({
    required String name,
  }) = _AddGenre;
  const factory GetGenreEvent.updateGenre({
    required int id,
    required String name,
  }) = _UpdateGenre;
}
