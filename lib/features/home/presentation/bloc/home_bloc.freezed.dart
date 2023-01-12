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
    required TResult Function() onOffer,
    required TResult Function() onAnswer,
    required TResult Function() onDescription,
    required TResult Function() onCandidate,
    required TResult Function(String sdp) onSdpRecived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
    TResult? Function()? onOffer,
    TResult? Function()? onAnswer,
    TResult? Function()? onDescription,
    TResult? Function()? onCandidate,
    TResult? Function(String sdp)? onSdpRecived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    TResult Function()? onOffer,
    TResult Function()? onAnswer,
    TResult Function()? onDescription,
    TResult Function()? onCandidate,
    TResult Function(String sdp)? onSdpRecived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) onStart,
    required TResult Function(_RemoteConnect value) onRemoteConnect,
    required TResult Function(_Offer value) onOffer,
    required TResult Function(_Answer value) onAnswer,
    required TResult Function(_Description value) onDescription,
    required TResult Function(_Candidate value) onCandidate,
    required TResult Function(_SdpRecived value) onSdpRecived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
    TResult? Function(_Offer value)? onOffer,
    TResult? Function(_Answer value)? onAnswer,
    TResult? Function(_Description value)? onDescription,
    TResult? Function(_Candidate value)? onCandidate,
    TResult? Function(_SdpRecived value)? onSdpRecived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    TResult Function(_Offer value)? onOffer,
    TResult Function(_Answer value)? onAnswer,
    TResult Function(_Description value)? onDescription,
    TResult Function(_Candidate value)? onCandidate,
    TResult Function(_SdpRecived value)? onSdpRecived,
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
    required TResult Function() onOffer,
    required TResult Function() onAnswer,
    required TResult Function() onDescription,
    required TResult Function() onCandidate,
    required TResult Function(String sdp) onSdpRecived,
  }) {
    return onStart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
    TResult? Function()? onOffer,
    TResult? Function()? onAnswer,
    TResult? Function()? onDescription,
    TResult? Function()? onCandidate,
    TResult? Function(String sdp)? onSdpRecived,
  }) {
    return onStart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    TResult Function()? onOffer,
    TResult Function()? onAnswer,
    TResult Function()? onDescription,
    TResult Function()? onCandidate,
    TResult Function(String sdp)? onSdpRecived,
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
    required TResult Function(_Offer value) onOffer,
    required TResult Function(_Answer value) onAnswer,
    required TResult Function(_Description value) onDescription,
    required TResult Function(_Candidate value) onCandidate,
    required TResult Function(_SdpRecived value) onSdpRecived,
  }) {
    return onStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
    TResult? Function(_Offer value)? onOffer,
    TResult? Function(_Answer value)? onAnswer,
    TResult? Function(_Description value)? onDescription,
    TResult? Function(_Candidate value)? onCandidate,
    TResult? Function(_SdpRecived value)? onSdpRecived,
  }) {
    return onStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    TResult Function(_Offer value)? onOffer,
    TResult Function(_Answer value)? onAnswer,
    TResult Function(_Description value)? onDescription,
    TResult Function(_Candidate value)? onCandidate,
    TResult Function(_SdpRecived value)? onSdpRecived,
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
    required TResult Function() onOffer,
    required TResult Function() onAnswer,
    required TResult Function() onDescription,
    required TResult Function() onCandidate,
    required TResult Function(String sdp) onSdpRecived,
  }) {
    return onRemoteConnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
    TResult? Function()? onOffer,
    TResult? Function()? onAnswer,
    TResult? Function()? onDescription,
    TResult? Function()? onCandidate,
    TResult? Function(String sdp)? onSdpRecived,
  }) {
    return onRemoteConnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    TResult Function()? onOffer,
    TResult Function()? onAnswer,
    TResult Function()? onDescription,
    TResult Function()? onCandidate,
    TResult Function(String sdp)? onSdpRecived,
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
    required TResult Function(_Offer value) onOffer,
    required TResult Function(_Answer value) onAnswer,
    required TResult Function(_Description value) onDescription,
    required TResult Function(_Candidate value) onCandidate,
    required TResult Function(_SdpRecived value) onSdpRecived,
  }) {
    return onRemoteConnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
    TResult? Function(_Offer value)? onOffer,
    TResult? Function(_Answer value)? onAnswer,
    TResult? Function(_Description value)? onDescription,
    TResult? Function(_Candidate value)? onCandidate,
    TResult? Function(_SdpRecived value)? onSdpRecived,
  }) {
    return onRemoteConnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    TResult Function(_Offer value)? onOffer,
    TResult Function(_Answer value)? onAnswer,
    TResult Function(_Description value)? onDescription,
    TResult Function(_Candidate value)? onCandidate,
    TResult Function(_SdpRecived value)? onSdpRecived,
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
abstract class _$$_OfferCopyWith<$Res> {
  factory _$$_OfferCopyWith(_$_Offer value, $Res Function(_$_Offer) then) =
      __$$_OfferCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OfferCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Offer>
    implements _$$_OfferCopyWith<$Res> {
  __$$_OfferCopyWithImpl(_$_Offer _value, $Res Function(_$_Offer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Offer implements _Offer {
  const _$_Offer();

  @override
  String toString() {
    return 'HomeEvent.onOffer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Offer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStart,
    required TResult Function() onRemoteConnect,
    required TResult Function() onOffer,
    required TResult Function() onAnswer,
    required TResult Function() onDescription,
    required TResult Function() onCandidate,
    required TResult Function(String sdp) onSdpRecived,
  }) {
    return onOffer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
    TResult? Function()? onOffer,
    TResult? Function()? onAnswer,
    TResult? Function()? onDescription,
    TResult? Function()? onCandidate,
    TResult? Function(String sdp)? onSdpRecived,
  }) {
    return onOffer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    TResult Function()? onOffer,
    TResult Function()? onAnswer,
    TResult Function()? onDescription,
    TResult Function()? onCandidate,
    TResult Function(String sdp)? onSdpRecived,
    required TResult orElse(),
  }) {
    if (onOffer != null) {
      return onOffer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) onStart,
    required TResult Function(_RemoteConnect value) onRemoteConnect,
    required TResult Function(_Offer value) onOffer,
    required TResult Function(_Answer value) onAnswer,
    required TResult Function(_Description value) onDescription,
    required TResult Function(_Candidate value) onCandidate,
    required TResult Function(_SdpRecived value) onSdpRecived,
  }) {
    return onOffer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
    TResult? Function(_Offer value)? onOffer,
    TResult? Function(_Answer value)? onAnswer,
    TResult? Function(_Description value)? onDescription,
    TResult? Function(_Candidate value)? onCandidate,
    TResult? Function(_SdpRecived value)? onSdpRecived,
  }) {
    return onOffer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    TResult Function(_Offer value)? onOffer,
    TResult Function(_Answer value)? onAnswer,
    TResult Function(_Description value)? onDescription,
    TResult Function(_Candidate value)? onCandidate,
    TResult Function(_SdpRecived value)? onSdpRecived,
    required TResult orElse(),
  }) {
    if (onOffer != null) {
      return onOffer(this);
    }
    return orElse();
  }
}

abstract class _Offer implements HomeEvent {
  const factory _Offer() = _$_Offer;
}

/// @nodoc
abstract class _$$_AnswerCopyWith<$Res> {
  factory _$$_AnswerCopyWith(_$_Answer value, $Res Function(_$_Answer) then) =
      __$$_AnswerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AnswerCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Answer>
    implements _$$_AnswerCopyWith<$Res> {
  __$$_AnswerCopyWithImpl(_$_Answer _value, $Res Function(_$_Answer) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Answer implements _Answer {
  const _$_Answer();

  @override
  String toString() {
    return 'HomeEvent.onAnswer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Answer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStart,
    required TResult Function() onRemoteConnect,
    required TResult Function() onOffer,
    required TResult Function() onAnswer,
    required TResult Function() onDescription,
    required TResult Function() onCandidate,
    required TResult Function(String sdp) onSdpRecived,
  }) {
    return onAnswer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
    TResult? Function()? onOffer,
    TResult? Function()? onAnswer,
    TResult? Function()? onDescription,
    TResult? Function()? onCandidate,
    TResult? Function(String sdp)? onSdpRecived,
  }) {
    return onAnswer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    TResult Function()? onOffer,
    TResult Function()? onAnswer,
    TResult Function()? onDescription,
    TResult Function()? onCandidate,
    TResult Function(String sdp)? onSdpRecived,
    required TResult orElse(),
  }) {
    if (onAnswer != null) {
      return onAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) onStart,
    required TResult Function(_RemoteConnect value) onRemoteConnect,
    required TResult Function(_Offer value) onOffer,
    required TResult Function(_Answer value) onAnswer,
    required TResult Function(_Description value) onDescription,
    required TResult Function(_Candidate value) onCandidate,
    required TResult Function(_SdpRecived value) onSdpRecived,
  }) {
    return onAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
    TResult? Function(_Offer value)? onOffer,
    TResult? Function(_Answer value)? onAnswer,
    TResult? Function(_Description value)? onDescription,
    TResult? Function(_Candidate value)? onCandidate,
    TResult? Function(_SdpRecived value)? onSdpRecived,
  }) {
    return onAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    TResult Function(_Offer value)? onOffer,
    TResult Function(_Answer value)? onAnswer,
    TResult Function(_Description value)? onDescription,
    TResult Function(_Candidate value)? onCandidate,
    TResult Function(_SdpRecived value)? onSdpRecived,
    required TResult orElse(),
  }) {
    if (onAnswer != null) {
      return onAnswer(this);
    }
    return orElse();
  }
}

abstract class _Answer implements HomeEvent {
  const factory _Answer() = _$_Answer;
}

/// @nodoc
abstract class _$$_DescriptionCopyWith<$Res> {
  factory _$$_DescriptionCopyWith(
          _$_Description value, $Res Function(_$_Description) then) =
      __$$_DescriptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DescriptionCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Description>
    implements _$$_DescriptionCopyWith<$Res> {
  __$$_DescriptionCopyWithImpl(
      _$_Description _value, $Res Function(_$_Description) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Description implements _Description {
  const _$_Description();

  @override
  String toString() {
    return 'HomeEvent.onDescription()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Description);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStart,
    required TResult Function() onRemoteConnect,
    required TResult Function() onOffer,
    required TResult Function() onAnswer,
    required TResult Function() onDescription,
    required TResult Function() onCandidate,
    required TResult Function(String sdp) onSdpRecived,
  }) {
    return onDescription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
    TResult? Function()? onOffer,
    TResult? Function()? onAnswer,
    TResult? Function()? onDescription,
    TResult? Function()? onCandidate,
    TResult? Function(String sdp)? onSdpRecived,
  }) {
    return onDescription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    TResult Function()? onOffer,
    TResult Function()? onAnswer,
    TResult Function()? onDescription,
    TResult Function()? onCandidate,
    TResult Function(String sdp)? onSdpRecived,
    required TResult orElse(),
  }) {
    if (onDescription != null) {
      return onDescription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) onStart,
    required TResult Function(_RemoteConnect value) onRemoteConnect,
    required TResult Function(_Offer value) onOffer,
    required TResult Function(_Answer value) onAnswer,
    required TResult Function(_Description value) onDescription,
    required TResult Function(_Candidate value) onCandidate,
    required TResult Function(_SdpRecived value) onSdpRecived,
  }) {
    return onDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
    TResult? Function(_Offer value)? onOffer,
    TResult? Function(_Answer value)? onAnswer,
    TResult? Function(_Description value)? onDescription,
    TResult? Function(_Candidate value)? onCandidate,
    TResult? Function(_SdpRecived value)? onSdpRecived,
  }) {
    return onDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    TResult Function(_Offer value)? onOffer,
    TResult Function(_Answer value)? onAnswer,
    TResult Function(_Description value)? onDescription,
    TResult Function(_Candidate value)? onCandidate,
    TResult Function(_SdpRecived value)? onSdpRecived,
    required TResult orElse(),
  }) {
    if (onDescription != null) {
      return onDescription(this);
    }
    return orElse();
  }
}

abstract class _Description implements HomeEvent {
  const factory _Description() = _$_Description;
}

/// @nodoc
abstract class _$$_CandidateCopyWith<$Res> {
  factory _$$_CandidateCopyWith(
          _$_Candidate value, $Res Function(_$_Candidate) then) =
      __$$_CandidateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CandidateCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Candidate>
    implements _$$_CandidateCopyWith<$Res> {
  __$$_CandidateCopyWithImpl(
      _$_Candidate _value, $Res Function(_$_Candidate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Candidate implements _Candidate {
  const _$_Candidate();

  @override
  String toString() {
    return 'HomeEvent.onCandidate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Candidate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStart,
    required TResult Function() onRemoteConnect,
    required TResult Function() onOffer,
    required TResult Function() onAnswer,
    required TResult Function() onDescription,
    required TResult Function() onCandidate,
    required TResult Function(String sdp) onSdpRecived,
  }) {
    return onCandidate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
    TResult? Function()? onOffer,
    TResult? Function()? onAnswer,
    TResult? Function()? onDescription,
    TResult? Function()? onCandidate,
    TResult? Function(String sdp)? onSdpRecived,
  }) {
    return onCandidate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    TResult Function()? onOffer,
    TResult Function()? onAnswer,
    TResult Function()? onDescription,
    TResult Function()? onCandidate,
    TResult Function(String sdp)? onSdpRecived,
    required TResult orElse(),
  }) {
    if (onCandidate != null) {
      return onCandidate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) onStart,
    required TResult Function(_RemoteConnect value) onRemoteConnect,
    required TResult Function(_Offer value) onOffer,
    required TResult Function(_Answer value) onAnswer,
    required TResult Function(_Description value) onDescription,
    required TResult Function(_Candidate value) onCandidate,
    required TResult Function(_SdpRecived value) onSdpRecived,
  }) {
    return onCandidate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
    TResult? Function(_Offer value)? onOffer,
    TResult? Function(_Answer value)? onAnswer,
    TResult? Function(_Description value)? onDescription,
    TResult? Function(_Candidate value)? onCandidate,
    TResult? Function(_SdpRecived value)? onSdpRecived,
  }) {
    return onCandidate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    TResult Function(_Offer value)? onOffer,
    TResult Function(_Answer value)? onAnswer,
    TResult Function(_Description value)? onDescription,
    TResult Function(_Candidate value)? onCandidate,
    TResult Function(_SdpRecived value)? onSdpRecived,
    required TResult orElse(),
  }) {
    if (onCandidate != null) {
      return onCandidate(this);
    }
    return orElse();
  }
}

abstract class _Candidate implements HomeEvent {
  const factory _Candidate() = _$_Candidate;
}

/// @nodoc
abstract class _$$_SdpRecivedCopyWith<$Res> {
  factory _$$_SdpRecivedCopyWith(
          _$_SdpRecived value, $Res Function(_$_SdpRecived) then) =
      __$$_SdpRecivedCopyWithImpl<$Res>;
  @useResult
  $Res call({String sdp});
}

/// @nodoc
class __$$_SdpRecivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_SdpRecived>
    implements _$$_SdpRecivedCopyWith<$Res> {
  __$$_SdpRecivedCopyWithImpl(
      _$_SdpRecived _value, $Res Function(_$_SdpRecived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sdp = null,
  }) {
    return _then(_$_SdpRecived(
      sdp: null == sdp
          ? _value.sdp
          : sdp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SdpRecived implements _SdpRecived {
  const _$_SdpRecived({required this.sdp});

  @override
  final String sdp;

  @override
  String toString() {
    return 'HomeEvent.onSdpRecived(sdp: $sdp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SdpRecived &&
            (identical(other.sdp, sdp) || other.sdp == sdp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sdp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SdpRecivedCopyWith<_$_SdpRecived> get copyWith =>
      __$$_SdpRecivedCopyWithImpl<_$_SdpRecived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onStart,
    required TResult Function() onRemoteConnect,
    required TResult Function() onOffer,
    required TResult Function() onAnswer,
    required TResult Function() onDescription,
    required TResult Function() onCandidate,
    required TResult Function(String sdp) onSdpRecived,
  }) {
    return onSdpRecived(sdp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onStart,
    TResult? Function()? onRemoteConnect,
    TResult? Function()? onOffer,
    TResult? Function()? onAnswer,
    TResult? Function()? onDescription,
    TResult? Function()? onCandidate,
    TResult? Function(String sdp)? onSdpRecived,
  }) {
    return onSdpRecived?.call(sdp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onStart,
    TResult Function()? onRemoteConnect,
    TResult Function()? onOffer,
    TResult Function()? onAnswer,
    TResult Function()? onDescription,
    TResult Function()? onCandidate,
    TResult Function(String sdp)? onSdpRecived,
    required TResult orElse(),
  }) {
    if (onSdpRecived != null) {
      return onSdpRecived(sdp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Start value) onStart,
    required TResult Function(_RemoteConnect value) onRemoteConnect,
    required TResult Function(_Offer value) onOffer,
    required TResult Function(_Answer value) onAnswer,
    required TResult Function(_Description value) onDescription,
    required TResult Function(_Candidate value) onCandidate,
    required TResult Function(_SdpRecived value) onSdpRecived,
  }) {
    return onSdpRecived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Start value)? onStart,
    TResult? Function(_RemoteConnect value)? onRemoteConnect,
    TResult? Function(_Offer value)? onOffer,
    TResult? Function(_Answer value)? onAnswer,
    TResult? Function(_Description value)? onDescription,
    TResult? Function(_Candidate value)? onCandidate,
    TResult? Function(_SdpRecived value)? onSdpRecived,
  }) {
    return onSdpRecived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Start value)? onStart,
    TResult Function(_RemoteConnect value)? onRemoteConnect,
    TResult Function(_Offer value)? onOffer,
    TResult Function(_Answer value)? onAnswer,
    TResult Function(_Description value)? onDescription,
    TResult Function(_Candidate value)? onCandidate,
    TResult Function(_SdpRecived value)? onSdpRecived,
    required TResult orElse(),
  }) {
    if (onSdpRecived != null) {
      return onSdpRecived(this);
    }
    return orElse();
  }
}

abstract class _SdpRecived implements HomeEvent {
  const factory _SdpRecived({required final String sdp}) = _$_SdpRecived;

  String get sdp;
  @JsonKey(ignore: true)
  _$$_SdpRecivedCopyWith<_$_SdpRecived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  LocalStatus get localStatus => throw _privateConstructorUsedError;
  RemoteStatus get remoteStatus => throw _privateConstructorUsedError;
  bool get activeAnswer => throw _privateConstructorUsedError;
  bool get activeSetDescription => throw _privateConstructorUsedError;
  bool get activeSetCandidate => throw _privateConstructorUsedError;
  String? get sdpForDescription => throw _privateConstructorUsedError;
  String? get sdpForSetCandidate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {LocalStatus localStatus,
      RemoteStatus remoteStatus,
      bool activeAnswer,
      bool activeSetDescription,
      bool activeSetCandidate,
      String? sdpForDescription,
      String? sdpForSetCandidate});
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
    Object? activeAnswer = null,
    Object? activeSetDescription = null,
    Object? activeSetCandidate = null,
    Object? sdpForDescription = freezed,
    Object? sdpForSetCandidate = freezed,
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
      activeAnswer: null == activeAnswer
          ? _value.activeAnswer
          : activeAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
      activeSetDescription: null == activeSetDescription
          ? _value.activeSetDescription
          : activeSetDescription // ignore: cast_nullable_to_non_nullable
              as bool,
      activeSetCandidate: null == activeSetCandidate
          ? _value.activeSetCandidate
          : activeSetCandidate // ignore: cast_nullable_to_non_nullable
              as bool,
      sdpForDescription: freezed == sdpForDescription
          ? _value.sdpForDescription
          : sdpForDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sdpForSetCandidate: freezed == sdpForSetCandidate
          ? _value.sdpForSetCandidate
          : sdpForSetCandidate // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call(
      {LocalStatus localStatus,
      RemoteStatus remoteStatus,
      bool activeAnswer,
      bool activeSetDescription,
      bool activeSetCandidate,
      String? sdpForDescription,
      String? sdpForSetCandidate});
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
    Object? activeAnswer = null,
    Object? activeSetDescription = null,
    Object? activeSetCandidate = null,
    Object? sdpForDescription = freezed,
    Object? sdpForSetCandidate = freezed,
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
      activeAnswer: null == activeAnswer
          ? _value.activeAnswer
          : activeAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
      activeSetDescription: null == activeSetDescription
          ? _value.activeSetDescription
          : activeSetDescription // ignore: cast_nullable_to_non_nullable
              as bool,
      activeSetCandidate: null == activeSetCandidate
          ? _value.activeSetCandidate
          : activeSetCandidate // ignore: cast_nullable_to_non_nullable
              as bool,
      sdpForDescription: freezed == sdpForDescription
          ? _value.sdpForDescription
          : sdpForDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sdpForSetCandidate: freezed == sdpForSetCandidate
          ? _value.sdpForSetCandidate
          : sdpForSetCandidate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.localStatus = LocalStatus.initial,
      this.remoteStatus = RemoteStatus.initial,
      this.activeAnswer = false,
      this.activeSetDescription = false,
      this.activeSetCandidate = false,
      this.sdpForDescription,
      this.sdpForSetCandidate});

  @override
  @JsonKey()
  final LocalStatus localStatus;
  @override
  @JsonKey()
  final RemoteStatus remoteStatus;
  @override
  @JsonKey()
  final bool activeAnswer;
  @override
  @JsonKey()
  final bool activeSetDescription;
  @override
  @JsonKey()
  final bool activeSetCandidate;
  @override
  final String? sdpForDescription;
  @override
  final String? sdpForSetCandidate;

  @override
  String toString() {
    return 'HomeState(localStatus: $localStatus, remoteStatus: $remoteStatus, activeAnswer: $activeAnswer, activeSetDescription: $activeSetDescription, activeSetCandidate: $activeSetCandidate, sdpForDescription: $sdpForDescription, sdpForSetCandidate: $sdpForSetCandidate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.localStatus, localStatus) ||
                other.localStatus == localStatus) &&
            (identical(other.remoteStatus, remoteStatus) ||
                other.remoteStatus == remoteStatus) &&
            (identical(other.activeAnswer, activeAnswer) ||
                other.activeAnswer == activeAnswer) &&
            (identical(other.activeSetDescription, activeSetDescription) ||
                other.activeSetDescription == activeSetDescription) &&
            (identical(other.activeSetCandidate, activeSetCandidate) ||
                other.activeSetCandidate == activeSetCandidate) &&
            (identical(other.sdpForDescription, sdpForDescription) ||
                other.sdpForDescription == sdpForDescription) &&
            (identical(other.sdpForSetCandidate, sdpForSetCandidate) ||
                other.sdpForSetCandidate == sdpForSetCandidate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      localStatus,
      remoteStatus,
      activeAnswer,
      activeSetDescription,
      activeSetCandidate,
      sdpForDescription,
      sdpForSetCandidate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final LocalStatus localStatus,
      final RemoteStatus remoteStatus,
      final bool activeAnswer,
      final bool activeSetDescription,
      final bool activeSetCandidate,
      final String? sdpForDescription,
      final String? sdpForSetCandidate}) = _$_HomeState;

  @override
  LocalStatus get localStatus;
  @override
  RemoteStatus get remoteStatus;
  @override
  bool get activeAnswer;
  @override
  bool get activeSetDescription;
  @override
  bool get activeSetCandidate;
  @override
  String? get sdpForDescription;
  @override
  String? get sdpForSetCandidate;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
