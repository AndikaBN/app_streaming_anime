import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/datasource/movie_remote_datasource.dart';
import '../../../../../data/model/response/movie_response_model.dart';

part 'movie_event.dart';
part 'movie_state.dart';
part 'movie_bloc.freezed.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRemoteDatasource movieRemoteDatasource;
  MovieBloc(this.movieRemoteDatasource) : super(const _Initial()) {
    on<_GetMovies>((event, emit) async {
      emit(const _Loading());
      final result = await movieRemoteDatasource.getMovies();
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data.data!)),
      );
    });
  }

  getGenreById({required int genreId}) {}
}
