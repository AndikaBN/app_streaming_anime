// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episodes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpisodesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int seriesId) getEpisodes,
    required TResult Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)
        addEpisode,
    required TResult Function(int seriesId, int id, String nomorEpisode,
            String title, String videoUrl)
        updateEpisode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int seriesId)? getEpisodes,
    TResult? Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)?
        addEpisode,
    TResult? Function(int seriesId, int id, String nomorEpisode, String title,
            String videoUrl)?
        updateEpisode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int seriesId)? getEpisodes,
    TResult Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)?
        addEpisode,
    TResult Function(int seriesId, int id, String nomorEpisode, String title,
            String videoUrl)?
        updateEpisode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetEpisodes value) getEpisodes,
    required TResult Function(_AddEpisode value) addEpisode,
    required TResult Function(_UpdateEpisode value) updateEpisode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetEpisodes value)? getEpisodes,
    TResult? Function(_AddEpisode value)? addEpisode,
    TResult? Function(_UpdateEpisode value)? updateEpisode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_AddEpisode value)? addEpisode,
    TResult Function(_UpdateEpisode value)? updateEpisode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesEventCopyWith<$Res> {
  factory $EpisodesEventCopyWith(
          EpisodesEvent value, $Res Function(EpisodesEvent) then) =
      _$EpisodesEventCopyWithImpl<$Res, EpisodesEvent>;
}

/// @nodoc
class _$EpisodesEventCopyWithImpl<$Res, $Val extends EpisodesEvent>
    implements $EpisodesEventCopyWith<$Res> {
  _$EpisodesEventCopyWithImpl(this._value, this._then);

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
    extends _$EpisodesEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'EpisodesEvent.started()';
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
    required TResult Function(int seriesId) getEpisodes,
    required TResult Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)
        addEpisode,
    required TResult Function(int seriesId, int id, String nomorEpisode,
            String title, String videoUrl)
        updateEpisode,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int seriesId)? getEpisodes,
    TResult? Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)?
        addEpisode,
    TResult? Function(int seriesId, int id, String nomorEpisode, String title,
            String videoUrl)?
        updateEpisode,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int seriesId)? getEpisodes,
    TResult Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)?
        addEpisode,
    TResult Function(int seriesId, int id, String nomorEpisode, String title,
            String videoUrl)?
        updateEpisode,
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
    required TResult Function(_GetEpisodes value) getEpisodes,
    required TResult Function(_AddEpisode value) addEpisode,
    required TResult Function(_UpdateEpisode value) updateEpisode,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetEpisodes value)? getEpisodes,
    TResult? Function(_AddEpisode value)? addEpisode,
    TResult? Function(_UpdateEpisode value)? updateEpisode,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_AddEpisode value)? addEpisode,
    TResult Function(_UpdateEpisode value)? updateEpisode,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EpisodesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetEpisodesImplCopyWith<$Res> {
  factory _$$GetEpisodesImplCopyWith(
          _$GetEpisodesImpl value, $Res Function(_$GetEpisodesImpl) then) =
      __$$GetEpisodesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int seriesId});
}

/// @nodoc
class __$$GetEpisodesImplCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res, _$GetEpisodesImpl>
    implements _$$GetEpisodesImplCopyWith<$Res> {
  __$$GetEpisodesImplCopyWithImpl(
      _$GetEpisodesImpl _value, $Res Function(_$GetEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seriesId = null,
  }) {
    return _then(_$GetEpisodesImpl(
      seriesId: null == seriesId
          ? _value.seriesId
          : seriesId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetEpisodesImpl implements _GetEpisodes {
  const _$GetEpisodesImpl({required this.seriesId});

  @override
  final int seriesId;

  @override
  String toString() {
    return 'EpisodesEvent.getEpisodes(seriesId: $seriesId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEpisodesImpl &&
            (identical(other.seriesId, seriesId) ||
                other.seriesId == seriesId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, seriesId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEpisodesImplCopyWith<_$GetEpisodesImpl> get copyWith =>
      __$$GetEpisodesImplCopyWithImpl<_$GetEpisodesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int seriesId) getEpisodes,
    required TResult Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)
        addEpisode,
    required TResult Function(int seriesId, int id, String nomorEpisode,
            String title, String videoUrl)
        updateEpisode,
  }) {
    return getEpisodes(seriesId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int seriesId)? getEpisodes,
    TResult? Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)?
        addEpisode,
    TResult? Function(int seriesId, int id, String nomorEpisode, String title,
            String videoUrl)?
        updateEpisode,
  }) {
    return getEpisodes?.call(seriesId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int seriesId)? getEpisodes,
    TResult Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)?
        addEpisode,
    TResult Function(int seriesId, int id, String nomorEpisode, String title,
            String videoUrl)?
        updateEpisode,
    required TResult orElse(),
  }) {
    if (getEpisodes != null) {
      return getEpisodes(seriesId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetEpisodes value) getEpisodes,
    required TResult Function(_AddEpisode value) addEpisode,
    required TResult Function(_UpdateEpisode value) updateEpisode,
  }) {
    return getEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetEpisodes value)? getEpisodes,
    TResult? Function(_AddEpisode value)? addEpisode,
    TResult? Function(_UpdateEpisode value)? updateEpisode,
  }) {
    return getEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_AddEpisode value)? addEpisode,
    TResult Function(_UpdateEpisode value)? updateEpisode,
    required TResult orElse(),
  }) {
    if (getEpisodes != null) {
      return getEpisodes(this);
    }
    return orElse();
  }
}

abstract class _GetEpisodes implements EpisodesEvent {
  const factory _GetEpisodes({required final int seriesId}) = _$GetEpisodesImpl;

  int get seriesId;
  @JsonKey(ignore: true)
  _$$GetEpisodesImplCopyWith<_$GetEpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddEpisodeImplCopyWith<$Res> {
  factory _$$AddEpisodeImplCopyWith(
          _$AddEpisodeImpl value, $Res Function(_$AddEpisodeImpl) then) =
      __$$AddEpisodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int seriesId, String nomorEpisode, String title, String videoUrl});
}

/// @nodoc
class __$$AddEpisodeImplCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res, _$AddEpisodeImpl>
    implements _$$AddEpisodeImplCopyWith<$Res> {
  __$$AddEpisodeImplCopyWithImpl(
      _$AddEpisodeImpl _value, $Res Function(_$AddEpisodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seriesId = null,
    Object? nomorEpisode = null,
    Object? title = null,
    Object? videoUrl = null,
  }) {
    return _then(_$AddEpisodeImpl(
      seriesId: null == seriesId
          ? _value.seriesId
          : seriesId // ignore: cast_nullable_to_non_nullable
              as int,
      nomorEpisode: null == nomorEpisode
          ? _value.nomorEpisode
          : nomorEpisode // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddEpisodeImpl implements _AddEpisode {
  const _$AddEpisodeImpl(
      {required this.seriesId,
      required this.nomorEpisode,
      required this.title,
      required this.videoUrl});

  @override
  final int seriesId;
  @override
  final String nomorEpisode;
  @override
  final String title;
  @override
  final String videoUrl;

  @override
  String toString() {
    return 'EpisodesEvent.addEpisode(seriesId: $seriesId, nomorEpisode: $nomorEpisode, title: $title, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEpisodeImpl &&
            (identical(other.seriesId, seriesId) ||
                other.seriesId == seriesId) &&
            (identical(other.nomorEpisode, nomorEpisode) ||
                other.nomorEpisode == nomorEpisode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, seriesId, nomorEpisode, title, videoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEpisodeImplCopyWith<_$AddEpisodeImpl> get copyWith =>
      __$$AddEpisodeImplCopyWithImpl<_$AddEpisodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int seriesId) getEpisodes,
    required TResult Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)
        addEpisode,
    required TResult Function(int seriesId, int id, String nomorEpisode,
            String title, String videoUrl)
        updateEpisode,
  }) {
    return addEpisode(seriesId, nomorEpisode, title, videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int seriesId)? getEpisodes,
    TResult? Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)?
        addEpisode,
    TResult? Function(int seriesId, int id, String nomorEpisode, String title,
            String videoUrl)?
        updateEpisode,
  }) {
    return addEpisode?.call(seriesId, nomorEpisode, title, videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int seriesId)? getEpisodes,
    TResult Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)?
        addEpisode,
    TResult Function(int seriesId, int id, String nomorEpisode, String title,
            String videoUrl)?
        updateEpisode,
    required TResult orElse(),
  }) {
    if (addEpisode != null) {
      return addEpisode(seriesId, nomorEpisode, title, videoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetEpisodes value) getEpisodes,
    required TResult Function(_AddEpisode value) addEpisode,
    required TResult Function(_UpdateEpisode value) updateEpisode,
  }) {
    return addEpisode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetEpisodes value)? getEpisodes,
    TResult? Function(_AddEpisode value)? addEpisode,
    TResult? Function(_UpdateEpisode value)? updateEpisode,
  }) {
    return addEpisode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_AddEpisode value)? addEpisode,
    TResult Function(_UpdateEpisode value)? updateEpisode,
    required TResult orElse(),
  }) {
    if (addEpisode != null) {
      return addEpisode(this);
    }
    return orElse();
  }
}

abstract class _AddEpisode implements EpisodesEvent {
  const factory _AddEpisode(
      {required final int seriesId,
      required final String nomorEpisode,
      required final String title,
      required final String videoUrl}) = _$AddEpisodeImpl;

  int get seriesId;
  String get nomorEpisode;
  String get title;
  String get videoUrl;
  @JsonKey(ignore: true)
  _$$AddEpisodeImplCopyWith<_$AddEpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateEpisodeImplCopyWith<$Res> {
  factory _$$UpdateEpisodeImplCopyWith(
          _$UpdateEpisodeImpl value, $Res Function(_$UpdateEpisodeImpl) then) =
      __$$UpdateEpisodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int seriesId,
      int id,
      String nomorEpisode,
      String title,
      String videoUrl});
}

/// @nodoc
class __$$UpdateEpisodeImplCopyWithImpl<$Res>
    extends _$EpisodesEventCopyWithImpl<$Res, _$UpdateEpisodeImpl>
    implements _$$UpdateEpisodeImplCopyWith<$Res> {
  __$$UpdateEpisodeImplCopyWithImpl(
      _$UpdateEpisodeImpl _value, $Res Function(_$UpdateEpisodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seriesId = null,
    Object? id = null,
    Object? nomorEpisode = null,
    Object? title = null,
    Object? videoUrl = null,
  }) {
    return _then(_$UpdateEpisodeImpl(
      seriesId: null == seriesId
          ? _value.seriesId
          : seriesId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nomorEpisode: null == nomorEpisode
          ? _value.nomorEpisode
          : nomorEpisode // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEpisodeImpl implements _UpdateEpisode {
  const _$UpdateEpisodeImpl(
      {required this.seriesId,
      required this.id,
      required this.nomorEpisode,
      required this.title,
      required this.videoUrl});

  @override
  final int seriesId;
  @override
  final int id;
  @override
  final String nomorEpisode;
  @override
  final String title;
  @override
  final String videoUrl;

  @override
  String toString() {
    return 'EpisodesEvent.updateEpisode(seriesId: $seriesId, id: $id, nomorEpisode: $nomorEpisode, title: $title, videoUrl: $videoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEpisodeImpl &&
            (identical(other.seriesId, seriesId) ||
                other.seriesId == seriesId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nomorEpisode, nomorEpisode) ||
                other.nomorEpisode == nomorEpisode) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, seriesId, id, nomorEpisode, title, videoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEpisodeImplCopyWith<_$UpdateEpisodeImpl> get copyWith =>
      __$$UpdateEpisodeImplCopyWithImpl<_$UpdateEpisodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int seriesId) getEpisodes,
    required TResult Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)
        addEpisode,
    required TResult Function(int seriesId, int id, String nomorEpisode,
            String title, String videoUrl)
        updateEpisode,
  }) {
    return updateEpisode(seriesId, id, nomorEpisode, title, videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int seriesId)? getEpisodes,
    TResult? Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)?
        addEpisode,
    TResult? Function(int seriesId, int id, String nomorEpisode, String title,
            String videoUrl)?
        updateEpisode,
  }) {
    return updateEpisode?.call(seriesId, id, nomorEpisode, title, videoUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int seriesId)? getEpisodes,
    TResult Function(
            int seriesId, String nomorEpisode, String title, String videoUrl)?
        addEpisode,
    TResult Function(int seriesId, int id, String nomorEpisode, String title,
            String videoUrl)?
        updateEpisode,
    required TResult orElse(),
  }) {
    if (updateEpisode != null) {
      return updateEpisode(seriesId, id, nomorEpisode, title, videoUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetEpisodes value) getEpisodes,
    required TResult Function(_AddEpisode value) addEpisode,
    required TResult Function(_UpdateEpisode value) updateEpisode,
  }) {
    return updateEpisode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetEpisodes value)? getEpisodes,
    TResult? Function(_AddEpisode value)? addEpisode,
    TResult? Function(_UpdateEpisode value)? updateEpisode,
  }) {
    return updateEpisode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetEpisodes value)? getEpisodes,
    TResult Function(_AddEpisode value)? addEpisode,
    TResult Function(_UpdateEpisode value)? updateEpisode,
    required TResult orElse(),
  }) {
    if (updateEpisode != null) {
      return updateEpisode(this);
    }
    return orElse();
  }
}

abstract class _UpdateEpisode implements EpisodesEvent {
  const factory _UpdateEpisode(
      {required final int seriesId,
      required final int id,
      required final String nomorEpisode,
      required final String title,
      required final String videoUrl}) = _$UpdateEpisodeImpl;

  int get seriesId;
  int get id;
  String get nomorEpisode;
  String get title;
  String get videoUrl;
  @JsonKey(ignore: true)
  _$$UpdateEpisodeImplCopyWith<_$UpdateEpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpisodesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Episodes> episodes)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Episodes> episodes)? loaded,
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
abstract class $EpisodesStateCopyWith<$Res> {
  factory $EpisodesStateCopyWith(
          EpisodesState value, $Res Function(EpisodesState) then) =
      _$EpisodesStateCopyWithImpl<$Res, EpisodesState>;
}

/// @nodoc
class _$EpisodesStateCopyWithImpl<$Res, $Val extends EpisodesState>
    implements $EpisodesStateCopyWith<$Res> {
  _$EpisodesStateCopyWithImpl(this._value, this._then);

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
    extends _$EpisodesStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'EpisodesState.initial()';
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
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Episodes> episodes)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Episodes> episodes)? loaded,
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

abstract class _Initial implements EpisodesState {
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
    extends _$EpisodesStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'EpisodesState.loading()';
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
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Episodes> episodes)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Episodes> episodes)? loaded,
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

abstract class _Loading implements EpisodesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Episodes> episodes});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$EpisodesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodes = null,
  }) {
    return _then(_$LoadedImpl(
      null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episodes>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Episodes> episodes) : _episodes = episodes;

  final List<Episodes> _episodes;
  @override
  List<Episodes> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  String toString() {
    return 'EpisodesState.loaded(episodes: $episodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._episodes, _episodes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_episodes));

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
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(episodes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Episodes> episodes)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(episodes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Episodes> episodes)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(episodes);
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

abstract class _Loaded implements EpisodesState {
  const factory _Loaded(final List<Episodes> episodes) = _$LoadedImpl;

  List<Episodes> get episodes;
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
    extends _$EpisodesStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'EpisodesState.error(message: $message)';
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
    required TResult Function(List<Episodes> episodes) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Episodes> episodes)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Episodes> episodes)? loaded,
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

abstract class _Error implements EpisodesState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
