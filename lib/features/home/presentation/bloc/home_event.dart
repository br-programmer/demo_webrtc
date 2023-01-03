part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onStart() = _Start;
  const factory HomeEvent.onRemoteConnect() = _RemoteConnect;
}
