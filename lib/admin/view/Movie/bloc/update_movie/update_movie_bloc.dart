import 'package:app_stream_anime/data/datasource/movie_remote_datasource.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_movie_event.dart';
part 'update_movie_state.dart';
part 'update_movie_bloc.freezed.dart';

class UpdateMovieBloc extends Bloc<UpdateMovieEvent, UpdateMovieState> {
  final MovieRemoteDatasource movieRemoteDatasource;
  UpdateMovieBloc(this.movieRemoteDatasource) : super(const _Initial()) {
    on<_UpdateMovie>((event, emit) async {
      emit(const _Loading());
      final result = await movieRemoteDatasource.updateMovie(
        event.id,
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
