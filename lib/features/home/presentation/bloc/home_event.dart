part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onStart() = _Start;
  const factory HomeEvent.onRemoteConnect() = _RemoteConnect;
  const factory HomeEvent.onOffer() = _Offer;
  const factory HomeEvent.onAnswer() = _Answer;
  const factory HomeEvent.onDescription() = _Description;
  const factory HomeEvent.onCandidate() = _Candidate;
  const factory HomeEvent.onSdpRecived({required String sdp}) = _SdpRecived;
}
