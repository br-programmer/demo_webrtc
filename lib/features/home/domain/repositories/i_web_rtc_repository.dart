import 'package:flutter_webrtc/flutter_webrtc.dart';

abstract class IWebRTCRepository {
  Future<RTCVideoRenderer> initLocalRender();
  Future<RTCVideoRenderer> initRemoteRender();
  Stream<WebRTCData> get onLocalWebRTC;
  Future<void> close();
  Future<Map<String, dynamic>> createOffer();
  Future<Map<String, dynamic>> createAnswer();
  Future<void> setRemoteDescription(String value);
  Future<void> addCandidate(String value);
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
