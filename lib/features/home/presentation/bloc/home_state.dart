part of 'home_bloc.dart';

enum LocalStatus { initial, loading, loaded, error }

enum RemoteStatus { initial, loading, loaded, error }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(LocalStatus.initial) LocalStatus localStatus,
    @Default(RemoteStatus.initial) RemoteStatus remoteStatus,
  }) = _HomeState;

  factory HomeState.initial() => const _HomeState();
}
