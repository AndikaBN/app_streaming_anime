import 'package:app_stream_anime/data/datasource/series_remote_datasource.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/response/series_response_model.dart';

part 'series_event.dart';
part 'series_state.dart';
part 'series_bloc.freezed.dart';

class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  final SeriesRemoteDatasource seriesRemoteDatasource;
  SeriesBloc(this.seriesRemoteDatasource) : super(const _Initial()) {
    on<_GetSeries>((event, emit) async {
      emit(const _Loading());
      final result = await seriesRemoteDatasource.getSeries();
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data.data!)),
      );
    });

    on<_DeleteSeries>((event, emit) async {
      emit(const _Loading());
      final result = await seriesRemoteDatasource.deleteSeries(event.id);
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(const _Initial()),
      );
    });

    on<_AddSeries>((event, emit) async {
      emit(const _Loading());
      final result = await seriesRemoteDatasource.addSeries(
        event.title,
        event.genreId,
        event.image,
        event.description,
        event.status,
      );
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(const _Initial()),
      );
    });

    on<_UpdateSeries>((event, emit) async {
      emit(const _Loading());
      final result = await seriesRemoteDatasource.updateSeries(
        event.id,
        event.title,
        event.genreId,
        event.image,
        event.description,
        event.status,
      );
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(const _Initial()),
      );
    });
  }
}
