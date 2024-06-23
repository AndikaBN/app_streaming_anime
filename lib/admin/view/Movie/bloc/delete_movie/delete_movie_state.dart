part of 'delete_movie_bloc.dart';

@freezed
class DeleteMovieState with _$DeleteMovieState {
  const factory DeleteMovieState.initial() = _Initial;
  const factory DeleteMovieState.loading() = _Loading;
  const factory DeleteMovieState.success() = _Success;
  const factory DeleteMovieState.error(String message) = _Error;
}
