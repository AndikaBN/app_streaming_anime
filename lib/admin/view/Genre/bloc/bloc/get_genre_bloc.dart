import 'package:app_stream_anime/data/datasource/genre_remote_datasource.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/model/response/genre_response_model.dart';

part 'get_genre_event.dart';
part 'get_genre_state.dart';
part 'get_genre_bloc.freezed.dart';

class GetGenreBloc extends Bloc<GetGenreEvent, GetGenreState> {
  final GenreRemoteDatasource genreRemoteDatasource;
  GetGenreBloc(this.genreRemoteDatasource) : super(const _Initial()) {
    on<_GetGenres>((event, emit) async {
      emit(const _Loading());
      final result = await genreRemoteDatasource.getGenre();
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data.data!)),
      );
    });

    on<_AddGenre>((event, emit) async {
      emit(const _Loading());
      final result = await genreRemoteDatasource.addGenre(event.name);
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(const _AddSuccess()),
      );
    });

    on<_DeleteGenre>((event, emit) async {
      emit(const _Loading());
      final result = await genreRemoteDatasource.deleteGenre(event.id);
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(const _DeleteSuccess()),
      );
    });

    on<_UpdateGenre>((event, emit) async {
      emit(const _Loading());
      final result =
          await genreRemoteDatasource.updateGenre(event.id, event.name);
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(const _UpdateSuccess()),
      );
    });
  }
}
