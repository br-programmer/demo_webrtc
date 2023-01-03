// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStart,
    required TResult Function() onRemoteConnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) onStart,
    required TResult Function(_RemoteConnect value) onRemoteConnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartCopyWith<$Res> {
  factory _$$_StartCopyWith(_$_Start value, $Res Function(_$_Start) then) =
      __$$_StartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Start>
    implements _$$_StartCopyWith<$Res> {
  __$$_StartCopyWithImpl(_$_Start _value, $Res Function(_$_Start) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Start implements _Start {
  const _$_Start();

  @override
  String toString() {
    return 'HomeEvent.onStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStart,
    required TResult Function() onRemoteConnect,
  }) {
    return onStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
  }) {
    return onStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    required TResult orElse(),
  }) {
    if (onStart != null) {
      return onStart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) onStart,
    required TResult Function(_RemoteConnect value) onRemoteConnect,
  }) {
    return onStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
  }) {
    return onStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    required TResult orElse(),
  }) {
    if (onStart != null) {
      return onStart(this);
    }
    return orElse();
  }
}

abstract class _Start implements HomeEvent {
  const factory _Start() = _$_Start;
}

/// @nodoc
abstract class _$$_RemoteConnectCopyWith<$Res> {
  factory _$$_RemoteConnectCopyWith(
          _$_RemoteConnect value, $Res Function(_$_RemoteConnect) then) =
      __$$_RemoteConnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoteConnectCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_RemoteConnect>
    implements _$$_RemoteConnectCopyWith<$Res> {
  __$$_RemoteConnectCopyWithImpl(
      _$_RemoteConnect _value, $Res Function(_$_RemoteConnect) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RemoteConnect implements _RemoteConnect {
  const _$_RemoteConnect();

  @override
  String toString() {
    return 'HomeEvent.onRemoteConnect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RemoteConnect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStart,
    required TResult Function() onRemoteConnect,
  }) {
    return onRemoteConnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
  }) {
    return onRemoteConnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    required TResult orElse(),
  }) {
    if (onRemoteConnect != null) {
      return onRemoteConnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) onStart,
    required TResult Function(_RemoteConnect value) onRemoteConnect,
  }) {
    return onRemoteConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
  }) {
    return onRemoteConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    required TResult orElse(),
  }) {
    if (onRemoteConnect != null) {
      return onRemoteConnect(this);
    }
    return orElse();
  }
}

abstract class _RemoteConnect implements HomeEvent {
  const factory _RemoteConnect() = _$_RemoteConnect;
}

/// @nodoc
mixin _$HomeState {
  LocalStatus get localStatus => throw _privateConstructorUsedError;
  RemoteStatus get remoteStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({LocalStatus localStatus, RemoteStatus remoteStatus});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localStatus = null,
    Object? remoteStatus = null,
  }) {
    return _then(_value.copyWith(
      localStatus: null == localStatus
          ? _value.localStatus
          : localStatus // ignore: cast_nullable_to_non_nullable
              as LocalStatus,
      remoteStatus: null == remoteStatus
          ? _value.remoteStatus
          : remoteStatus // ignore: cast_nullable_to_non_nullable
              as RemoteStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalStatus localStatus, RemoteStatus remoteStatus});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localStatus = null,
    Object? remoteStatus = null,
  }) {
    return _then(_$_HomeState(
      localStatus: null == localStatus
          ? _value.localStatus
          : localStatus // ignore: cast_nullable_to_non_nullable
              as LocalStatus,
      remoteStatus: null == remoteStatus
          ? _value.remoteStatus
          : remoteStatus // ignore: cast_nullable_to_non_nullable
              as RemoteStatus,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.localStatus = LocalStatus.initial,
      this.remoteStatus = RemoteStatus.initial});

  @override
  @JsonKey()
  final LocalStatus localStatus;
  @override
  @JsonKey()
  final RemoteStatus remoteStatus;

  @override
  String toString() {
    return 'HomeState(localStatus: $localStatus, remoteStatus: $remoteStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.localStatus, localStatus) ||
                other.localStatus == localStatus) &&
            (identical(other.remoteStatus, remoteStatus) ||
                other.remoteStatus == remoteStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localStatus, remoteStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final LocalStatus localStatus,
      final RemoteStatus remoteStatus}) = _$_HomeState;

  @override
  LocalStatus get localStatus;
  @override
  RemoteStatus get remoteStatus;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
