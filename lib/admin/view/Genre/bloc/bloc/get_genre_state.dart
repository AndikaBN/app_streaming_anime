part of 'get_genre_bloc.dart';


@freezed
class GetGenreState with _$GetGenreState {
  const factory GetGenreState.initial() = _Initial;
  const factory GetGenreState.loading() = _Loading;
  const factory GetGenreState.loaded(List<Genre> data) = _Loaded;
  const factory GetGenreState.error(String message) = _Error;
  const factory GetGenreState.addSuccess() = _AddSuccess;
  const factory GetGenreState.deleteSuccess() = _DeleteSuccess;
  const factory GetGenreState.updateSuccess() = _UpdateSuccess;
}
