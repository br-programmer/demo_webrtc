// ignore_for_file: use_setters_to_change_properties, use_late_for_private_fields_and_variables, inference_failure_on_collection_literal

import 'dart:async';
import 'dart:developer';

import 'package:demo_webrtc/core/core.dart';
import 'package:demo_webrtc/features/home/home.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IWebRTCRepository)
class WebRtcRepository implements IWebRTCRepository {
  WebRtcRepository(this._config);

  final Config _config;

  StreamController<WebRTCData>? _controller;
  RTCPeerConnection? _peerConnection;
  MediaStream? _localStream;

  late final RTCVideoRenderer _localVideoRenderer;
  late final RTCVideoRenderer _remoteVideoRenderer;

  @override
  Future<RTCVideoRenderer> initLocalRender() async {
    try {
      _localVideoRenderer = RTCVideoRenderer();
      await _localVideoRenderer.initialize();
      await _getUserMedia();
      return _localVideoRenderer;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<RTCVideoRenderer> initRemoteRender() async {
    try {
      _remoteVideoRenderer = RTCVideoRenderer();
      await _remoteVideoRenderer.initialize();
      _peerConnection = await _createPeerConnection();
      await _createOffer();
      return _remoteVideoRenderer;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Stream<WebRTCData> get onLocalWebRTC {
    _controller ??= StreamController.broadcast();
    return _controller!.stream;
  }

  @override
  Future<void> close() async {
    await _localVideoRenderer.dispose();
  }

  Future<MediaStream> _getUserMedia() async {
    if (_localStream == null) {
      final mediaConstraints = <String, dynamic>{
        'audio': true,
        'video': {'facingMode': 'user'}
      };
      _localStream =
          await navigator.mediaDevices.getUserMedia(mediaConstraints);
      _localVideoRenderer.srcObject = _localStream;
      _addToStream(LocalAudioTracks(_localStream!.getAudioTracks()));
      _addToStream(LocalVideoTracks(_localStream!.getVideoTracks()));
      return _localStream!;
    }
    return _localStream!;
  }

  void _addToStream(WebRTCData data) {
    if (_controller != null && _controller!.hasListener) {
      _controller?.sink.add(data);
    }
  }

  Map<String, dynamic> get _configuration => {
        'sdpSemantics': 'plan-b',
        'iceServers': [
          {'url': 'stun:stun.l.google.com:19302'}
          // {'url': _config.turnUrl}
        ]
      };

  Map<String, dynamic> get _offerSdpConstraints => {
        'mandatory': {
          'OfferToReceiveAudio': true,
          'OfferToReceiveVideo': true,
        },
        'optional': [],
      };

  void _onIceCandidate(RTCIceCandidate candidate) {
    log('candidate::::${candidate.candidate}');
    log('sdpMid::::${candidate.sdpMid}');
    log('sdpMLineIndex::::${candidate.sdpMLineIndex}');
  }

  void _onIceConnectionState(RTCIceConnectionState state) {
    log('state:::$state');
  }

  void _onAddStream(MediaStream stream) {
    _remoteVideoRenderer.srcObject = stream;
    _addToStream(RemoteAudioTracks(stream.getAudioTracks()));
    _addToStream(RemoteVideoTracks(stream.getVideoTracks()));
  }

  Future<RTCPeerConnection> _createPeerConnection() async {
    final peerConnection = await createPeerConnection(
      _configuration,
      _offerSdpConstraints,
    );
    await peerConnection.addStream(await _getUserMedia());
    peerConnection
      ..onIceCandidate = _onIceCandidate
      ..onIceConnectionState = _onIceConnectionState
      ..onAddStream = _onAddStream;
    return peerConnection;
  }

  Future<void> _createOffer() async {
    final description = await _peerConnection!.createOffer(
      {'offerToReceiveVideo': 1},
    );
    _peerConnection!.setLocalDescription(description);
  }
}
