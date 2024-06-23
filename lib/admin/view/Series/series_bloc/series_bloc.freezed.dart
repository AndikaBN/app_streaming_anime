// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'series_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SeriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getSeries,
    required TResult Function(int id) deleteSeries,
    required TResult Function(String title, int genreId, String image,
            String description, String status)
        addSeries,
    required TResult Function(int id, String title, int genreId, String image,
            String description, String status)
        updateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getSeries,
    TResult? Function(int id)? deleteSeries,
    TResult? Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult? Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getSeries,
    TResult Function(int id)? deleteSeries,
    TResult Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetSeries value) getSeries,
    required TResult Function(_DeleteSeries value) deleteSeries,
    required TResult Function(_AddSeries value) addSeries,
    required TResult Function(_UpdateSeries value) updateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetSeries value)? getSeries,
    TResult? Function(_DeleteSeries value)? deleteSeries,
    TResult? Function(_AddSeries value)? addSeries,
    TResult? Function(_UpdateSeries value)? updateSeries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetSeries value)? getSeries,
    TResult Function(_DeleteSeries value)? deleteSeries,
    TResult Function(_AddSeries value)? addSeries,
    TResult Function(_UpdateSeries value)? updateSeries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesEventCopyWith<$Res> {
  factory $SeriesEventCopyWith(
          SeriesEvent value, $Res Function(SeriesEvent) then) =
      _$SeriesEventCopyWithImpl<$Res, SeriesEvent>;
}

/// @nodoc
class _$SeriesEventCopyWithImpl<$Res, $Val extends SeriesEvent>
    implements $SeriesEventCopyWith<$Res> {
  _$SeriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SeriesEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getSeries,
    required TResult Function(int id) deleteSeries,
    required TResult Function(String title, int genreId, String image,
            String description, String status)
        addSeries,
    required TResult Function(int id, String title, int genreId, String image,
            String description, String status)
        updateSeries,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getSeries,
    TResult? Function(int id)? deleteSeries,
    TResult? Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult? Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getSeries,
    TResult Function(int id)? deleteSeries,
    TResult Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetSeries value) getSeries,
    required TResult Function(_DeleteSeries value) deleteSeries,
    required TResult Function(_AddSeries value) addSeries,
    required TResult Function(_UpdateSeries value) updateSeries,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetSeries value)? getSeries,
    TResult? Function(_DeleteSeries value)? deleteSeries,
    TResult? Function(_AddSeries value)? addSeries,
    TResult? Function(_UpdateSeries value)? updateSeries,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetSeries value)? getSeries,
    TResult Function(_DeleteSeries value)? deleteSeries,
    TResult Function(_AddSeries value)? addSeries,
    TResult Function(_UpdateSeries value)? updateSeries,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SeriesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetSeriesImplCopyWith<$Res> {
  factory _$$GetSeriesImplCopyWith(
          _$GetSeriesImpl value, $Res Function(_$GetSeriesImpl) then) =
      __$$GetSeriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSeriesImplCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$GetSeriesImpl>
    implements _$$GetSeriesImplCopyWith<$Res> {
  __$$GetSeriesImplCopyWithImpl(
      _$GetSeriesImpl _value, $Res Function(_$GetSeriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSeriesImpl implements _GetSeries {
  const _$GetSeriesImpl();

  @override
  String toString() {
    return 'SeriesEvent.getSeries()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSeriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getSeries,
    required TResult Function(int id) deleteSeries,
    required TResult Function(String title, int genreId, String image,
            String description, String status)
        addSeries,
    required TResult Function(int id, String title, int genreId, String image,
            String description, String status)
        updateSeries,
  }) {
    return getSeries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getSeries,
    TResult? Function(int id)? deleteSeries,
    TResult? Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult? Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
  }) {
    return getSeries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getSeries,
    TResult Function(int id)? deleteSeries,
    TResult Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
    required TResult orElse(),
  }) {
    if (getSeries != null) {
      return getSeries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetSeries value) getSeries,
    required TResult Function(_DeleteSeries value) deleteSeries,
    required TResult Function(_AddSeries value) addSeries,
    required TResult Function(_UpdateSeries value) updateSeries,
  }) {
    return getSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetSeries value)? getSeries,
    TResult? Function(_DeleteSeries value)? deleteSeries,
    TResult? Function(_AddSeries value)? addSeries,
    TResult? Function(_UpdateSeries value)? updateSeries,
  }) {
    return getSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetSeries value)? getSeries,
    TResult Function(_DeleteSeries value)? deleteSeries,
    TResult Function(_AddSeries value)? addSeries,
    TResult Function(_UpdateSeries value)? updateSeries,
    required TResult orElse(),
  }) {
    if (getSeries != null) {
      return getSeries(this);
    }
    return orElse();
  }
}

abstract class _GetSeries implements SeriesEvent {
  const factory _GetSeries() = _$GetSeriesImpl;
}

/// @nodoc
abstract class _$$DeleteSeriesImplCopyWith<$Res> {
  factory _$$DeleteSeriesImplCopyWith(
          _$DeleteSeriesImpl value, $Res Function(_$DeleteSeriesImpl) then) =
      __$$DeleteSeriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteSeriesImplCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$DeleteSeriesImpl>
    implements _$$DeleteSeriesImplCopyWith<$Res> {
  __$$DeleteSeriesImplCopyWithImpl(
      _$DeleteSeriesImpl _value, $Res Function(_$DeleteSeriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteSeriesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteSeriesImpl implements _DeleteSeries {
  const _$DeleteSeriesImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SeriesEvent.deleteSeries(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSeriesImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSeriesImplCopyWith<_$DeleteSeriesImpl> get copyWith =>
      __$$DeleteSeriesImplCopyWithImpl<_$DeleteSeriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getSeries,
    required TResult Function(int id) deleteSeries,
    required TResult Function(String title, int genreId, String image,
            String description, String status)
        addSeries,
    required TResult Function(int id, String title, int genreId, String image,
            String description, String status)
        updateSeries,
  }) {
    return deleteSeries(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getSeries,
    TResult? Function(int id)? deleteSeries,
    TResult? Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult? Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
  }) {
    return deleteSeries?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getSeries,
    TResult Function(int id)? deleteSeries,
    TResult Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
    required TResult orElse(),
  }) {
    if (deleteSeries != null) {
      return deleteSeries(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetSeries value) getSeries,
    required TResult Function(_DeleteSeries value) deleteSeries,
    required TResult Function(_AddSeries value) addSeries,
    required TResult Function(_UpdateSeries value) updateSeries,
  }) {
    return deleteSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetSeries value)? getSeries,
    TResult? Function(_DeleteSeries value)? deleteSeries,
    TResult? Function(_AddSeries value)? addSeries,
    TResult? Function(_UpdateSeries value)? updateSeries,
  }) {
    return deleteSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetSeries value)? getSeries,
    TResult Function(_DeleteSeries value)? deleteSeries,
    TResult Function(_AddSeries value)? addSeries,
    TResult Function(_UpdateSeries value)? updateSeries,
    required TResult orElse(),
  }) {
    if (deleteSeries != null) {
      return deleteSeries(this);
    }
    return orElse();
  }
}

abstract class _DeleteSeries implements SeriesEvent {
  const factory _DeleteSeries({required final int id}) = _$DeleteSeriesImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteSeriesImplCopyWith<_$DeleteSeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSeriesImplCopyWith<$Res> {
  factory _$$AddSeriesImplCopyWith(
          _$AddSeriesImpl value, $Res Function(_$AddSeriesImpl) then) =
      __$$AddSeriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title,
      int genreId,
      String image,
      String description,
      String status});
}

/// @nodoc
class __$$AddSeriesImplCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$AddSeriesImpl>
    implements _$$AddSeriesImplCopyWith<$Res> {
  __$$AddSeriesImplCopyWithImpl(
      _$AddSeriesImpl _value, $Res Function(_$AddSeriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? genreId = null,
    Object? image = null,
    Object? description = null,
    Object? status = null,
  }) {
    return _then(_$AddSeriesImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      genreId: null == genreId
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSeriesImpl implements _AddSeries {
  const _$AddSeriesImpl(
      {required this.title,
      required this.genreId,
      required this.image,
      required this.description,
      required this.status});

  @override
  final String title;
  @override
  final int genreId;
  @override
  final String image;
  @override
  final String description;
  @override
  final String status;

  @override
  String toString() {
    return 'SeriesEvent.addSeries(title: $title, genreId: $genreId, image: $image, description: $description, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSeriesImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.genreId, genreId) || other.genreId == genreId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, genreId, image, description, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSeriesImplCopyWith<_$AddSeriesImpl> get copyWith =>
      __$$AddSeriesImplCopyWithImpl<_$AddSeriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getSeries,
    required TResult Function(int id) deleteSeries,
    required TResult Function(String title, int genreId, String image,
            String description, String status)
        addSeries,
    required TResult Function(int id, String title, int genreId, String image,
            String description, String status)
        updateSeries,
  }) {
    return addSeries(title, genreId, image, description, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getSeries,
    TResult? Function(int id)? deleteSeries,
    TResult? Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult? Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
  }) {
    return addSeries?.call(title, genreId, image, description, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getSeries,
    TResult Function(int id)? deleteSeries,
    TResult Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
    required TResult orElse(),
  }) {
    if (addSeries != null) {
      return addSeries(title, genreId, image, description, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetSeries value) getSeries,
    required TResult Function(_DeleteSeries value) deleteSeries,
    required TResult Function(_AddSeries value) addSeries,
    required TResult Function(_UpdateSeries value) updateSeries,
  }) {
    return addSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetSeries value)? getSeries,
    TResult? Function(_DeleteSeries value)? deleteSeries,
    TResult? Function(_AddSeries value)? addSeries,
    TResult? Function(_UpdateSeries value)? updateSeries,
  }) {
    return addSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetSeries value)? getSeries,
    TResult Function(_DeleteSeries value)? deleteSeries,
    TResult Function(_AddSeries value)? addSeries,
    TResult Function(_UpdateSeries value)? updateSeries,
    required TResult orElse(),
  }) {
    if (addSeries != null) {
      return addSeries(this);
    }
    return orElse();
  }
}

abstract class _AddSeries implements SeriesEvent {
  const factory _AddSeries(
      {required final String title,
      required final int genreId,
      required final String image,
      required final String description,
      required final String status}) = _$AddSeriesImpl;

  String get title;
  int get genreId;
  String get image;
  String get description;
  String get status;
  @JsonKey(ignore: true)
  _$$AddSeriesImplCopyWith<_$AddSeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSeriesImplCopyWith<$Res> {
  factory _$$UpdateSeriesImplCopyWith(
          _$UpdateSeriesImpl value, $Res Function(_$UpdateSeriesImpl) then) =
      __$$UpdateSeriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String title,
      int genreId,
      String image,
      String description,
      String status});
}

/// @nodoc
class __$$UpdateSeriesImplCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res, _$UpdateSeriesImpl>
    implements _$$UpdateSeriesImplCopyWith<$Res> {
  __$$UpdateSeriesImplCopyWithImpl(
      _$UpdateSeriesImpl _value, $Res Function(_$UpdateSeriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? genreId = null,
    Object? image = null,
    Object? description = null,
    Object? status = null,
  }) {
    return _then(_$UpdateSeriesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      genreId: null == genreId
          ? _value.genreId
          : genreId // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSeriesImpl implements _UpdateSeries {
  const _$UpdateSeriesImpl(
      {required this.id,
      required this.title,
      required this.genreId,
      required this.image,
      required this.description,
      required this.status});

  @override
  final int id;
  @override
  final String title;
  @override
  final int genreId;
  @override
  final String image;
  @override
  final String description;
  @override
  final String status;

  @override
  String toString() {
    return 'SeriesEvent.updateSeries(id: $id, title: $title, genreId: $genreId, image: $image, description: $description, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSeriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.genreId, genreId) || other.genreId == genreId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, genreId, image, description, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSeriesImplCopyWith<_$UpdateSeriesImpl> get copyWith =>
      __$$UpdateSeriesImplCopyWithImpl<_$UpdateSeriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getSeries,
    required TResult Function(int id) deleteSeries,
    required TResult Function(String title, int genreId, String image,
            String description, String status)
        addSeries,
    required TResult Function(int id, String title, int genreId, String image,
            String description, String status)
        updateSeries,
  }) {
    return updateSeries(id, title, genreId, image, description, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getSeries,
    TResult? Function(int id)? deleteSeries,
    TResult? Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult? Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
  }) {
    return updateSeries?.call(id, title, genreId, image, description, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getSeries,
    TResult Function(int id)? deleteSeries,
    TResult Function(String title, int genreId, String image,
            String description, String status)?
        addSeries,
    TResult Function(int id, String title, int genreId, String image,
            String description, String status)?
        updateSeries,
    required TResult orElse(),
  }) {
    if (updateSeries != null) {
      return updateSeries(id, title, genreId, image, description, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetSeries value) getSeries,
    required TResult Function(_DeleteSeries value) deleteSeries,
    required TResult Function(_AddSeries value) addSeries,
    required TResult Function(_UpdateSeries value) updateSeries,
  }) {
    return updateSeries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetSeries value)? getSeries,
    TResult? Function(_DeleteSeries value)? deleteSeries,
    TResult? Function(_AddSeries value)? addSeries,
    TResult? Function(_UpdateSeries value)? updateSeries,
  }) {
    return updateSeries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetSeries value)? getSeries,
    TResult Function(_DeleteSeries value)? deleteSeries,
    TResult Function(_AddSeries value)? addSeries,
    TResult Function(_UpdateSeries value)? updateSeries,
    required TResult orElse(),
  }) {
    if (updateSeries != null) {
      return updateSeries(this);
    }
    return orElse();
  }
}

abstract class _UpdateSeries implements SeriesEvent {
  const factory _UpdateSeries(
      {required final int id,
      required final String title,
      required final int genreId,
      required final String image,
      required final String description,
      required final String status}) = _$UpdateSeriesImpl;

  int get id;
  String get title;
  int get genreId;
  String get image;
  String get description;
  String get status;
  @JsonKey(ignore: true)
  _$$UpdateSeriesImplCopyWith<_$UpdateSeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SeriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Series> series) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Series> series)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Series> series)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesStateCopyWith<$Res> {
  factory $SeriesStateCopyWith(
          SeriesState value, $Res Function(SeriesState) then) =
      _$SeriesStateCopyWithImpl<$Res, SeriesState>;
}

/// @nodoc
class _$SeriesStateCopyWithImpl<$Res, $Val extends SeriesState>
    implements $SeriesStateCopyWith<$Res> {
  _$SeriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SeriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Series> series) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Series> series)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Series> series)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SeriesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SeriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Series> series) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Series> series)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Series> series)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SeriesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Series> series});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? series = null,
  }) {
    return _then(_$LoadedImpl(
      null == series
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<Series>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Series> series) : _series = series;

  final List<Series> _series;
  @override
  List<Series> get series {
    if (_series is EqualUnmodifiableListView) return _series;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  String toString() {
    return 'SeriesState.loaded(series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._series, _series));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_series));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Series> series) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(series);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Series> series)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(series);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Series> series)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements SeriesState {
  const factory _Loaded(final List<Series> series) = _$LoadedImpl;

  List<Series> get series;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SeriesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Series> series) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Series> series)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Series> series)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SeriesState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
