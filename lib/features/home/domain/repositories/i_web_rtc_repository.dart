import 'package:flutter_webrtc/flutter_webrtc.dart';

abstract class IWebRTCRepository {
  Future<void> initSockets();
  Future<RTCVideoRenderer> initLocalRender();
  Future<RTCVideoRenderer> initRemoteRender();
  Stream<WebRTCData> get onLocalWebRTC;
  Future<void> close();
  Future<String> createOffer();
  Future<String> createAnswer();
  Future<void> setRemoteDescription(String value);
  Future<void> addCandidate(String value);
  Future<void> sendSdp(String value);
}

abstract class WebRTCData {}

class LocalAudioTracks implements WebRTCData {
  const LocalAudioTracks(this.audioTracks);

  final List<MediaStreamTrack> audioTracks;
}

class LocalVideoTracks implements WebRTCData {
  const LocalVideoTracks(this.videoTracks);

  final List<MediaStreamTrack> videoTracks;
}

class RemoteAudioTracks implements WebRTCData {
  const RemoteAudioTracks(this.audioTracks);

  final List<MediaStreamTrack> audioTracks;
}

class RemoteVideoTracks implements WebRTCData {
  const RemoteVideoTracks(this.videoTracks);

  final List<MediaStreamTrack> videoTracks;
}

class RemoteSDPRecived implements WebRTCData {
  RemoteSDPRecived(this.sdp);

  final String sdp;
}
