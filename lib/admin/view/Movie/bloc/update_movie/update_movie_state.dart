part of 'update_movie_bloc.dart';

@freezed
class UpdateMovieState with _$UpdateMovieState {
  const factory UpdateMovieState.initial() = _Initial;
  const factory UpdateMovieState.loading() = _Loading;
  const factory UpdateMovieState.success() = _Success;
  const factory UpdateMovieState.error(String message) = _Error;
}
