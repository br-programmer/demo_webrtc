part of 'home_bloc.dart';

enum LocalStatus { initial, loading, loaded, error }

enum RemoteStatus { initial, loading, loaded, error }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(LocalStatus.initial) LocalStatus localStatus,
    @Default(RemoteStatus.initial) RemoteStatus remoteStatus,
    @Default(false) bool activeAnswer,
    @Default(false) bool activeSetDescription,
    @Default(false) bool activeSetCandidate,
    String? sdpForDescription,
    String? sdpForSetCandidate,
  }) = _HomeState;

  factory HomeState.initial() => const _HomeState();
}
