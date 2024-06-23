import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/datasource/movie_remote_datasource.dart';

part 'create_movie_event.dart';
part 'create_movie_state.dart';
part 'create_movie_bloc.freezed.dart';

class CreateMovieBloc extends Bloc<CreateMovieEvent, CreateMovieState> {
  final MovieRemoteDatasource movieRemoteDatasource;
  CreateMovieBloc(this.movieRemoteDatasource) : super(const _Initial()) {
    on<_CreateMovie>((event, emit) async {
      emit(const _Loading());
      final result = await movieRemoteDatasource.addMovie(
        event.title,
        event.description,
        event.genreId,
        event.image,
        event.status,
        event.video,
      );
      result.fold(
        (error) => emit(_Error(error)),
        (_) => emit(const _Success()),
      );
    });
  }
}
