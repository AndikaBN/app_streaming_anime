part of 'series_bloc.dart';

@freezed
class SeriesState with _$SeriesState {
  const factory SeriesState.initial() = _Initial;
  const factory SeriesState.loading() = _Loading;
  const factory SeriesState.loaded(List<Series> series) = _Loaded;
  const factory SeriesState.error(String message) = _Error;
}
