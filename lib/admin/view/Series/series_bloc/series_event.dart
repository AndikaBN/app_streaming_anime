part of 'series_bloc.dart';

@freezed
class SeriesEvent with _$SeriesEvent {
  const factory SeriesEvent.started() = _Started;
  const factory SeriesEvent.getSeries() = _GetSeries;
  const factory SeriesEvent.deleteSeries({
    required int id,
  }) = _DeleteSeries;
  const factory SeriesEvent.addSeries({
    required String title,
    required int genreId,
    required String image,
    required String description,
    required String status,
  }) = _AddSeries;
  const factory SeriesEvent.updateSeries({
    required int id,
    required String title,
    required int genreId,
    required String image,
    required String description,
    required String status,
  }) = _UpdateSeries;
}