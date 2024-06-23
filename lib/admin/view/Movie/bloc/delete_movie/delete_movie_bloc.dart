import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/datasource/movie_remote_datasource.dart';

part 'delete_movie_event.dart';
part 'delete_movie_state.dart';
part 'delete_movie_bloc.freezed.dart';

class DeleteMovieBloc extends Bloc<DeleteMovieEvent, DeleteMovieState> {
  final MovieRemoteDatasource movieRemoteDatasource;
  DeleteMovieBloc(this.movieRemoteDatasource) : super(const _Initial()) {
    on<_DeleteMovie>((event, emit) async {
      emit(const _Loading());
      final result = await movieRemoteDatasource.deleteMovie(event.id);
      result.fold(
        (error) => emit(_Error(error)),
        (_) => emit(const _Success()),
      );
    });
  }
}
