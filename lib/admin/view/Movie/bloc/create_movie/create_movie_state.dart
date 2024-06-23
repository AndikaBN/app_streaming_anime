part of 'create_movie_bloc.dart';

@freezed
class CreateMovieState with _$CreateMovieState {
  const factory CreateMovieState.initial() = _Initial;
  const factory CreateMovieState.loading() = _Loading;
  const factory CreateMovieState.success() = _Success;
  const factory CreateMovieState.error(String message) = _Error;
}
