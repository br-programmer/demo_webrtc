// ignore_for_file: use_setters_to_change_properties, use_late_for_private_fields_and_variables, inference_failure_on_collection_literal

import 'dart:async';
import 'dart:convert';
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
      _localStream = await navigator.mediaDevices.getUserMedia(mediaConstraints);
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
          // {'url': 'eturnal.stunturn.svc.cluster.local:3479'}
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
      // _offerSdpConstraints,
      _loopbackConstraints,
    );
    await peerConnection.addStream(await _getUserMedia());
    peerConnection
      ..onIceCandidate = _onIceCandidate
      ..onIceConnectionState = _onIceConnectionState
      ..onAddStream = _onAddStream;
    return peerConnection;
  }

  @override
  Future<String> createOffer() async {
    final description = await _peerConnection!.createOffer(_constraints);
    await _peerConnection!.setLocalDescription(description);
    return _session(description);
  }

  @override
  Future<String> createAnswer() async {
    final description = await _peerConnection!.createAnswer(_constraints);
    await _peerConnection!.setLocalDescription(description);
    return _session(description);
  }

  @override
  Future<void> setRemoteDescription(String value) async {
    // final session = await jsonDecode(value) as Map<String, dynamic>;
    // print('$session session');
    // final session2 = parse(value);
    // print('$session2 session2');
    // final sdp = write(parse(value), null);
    final description = RTCSessionDescription(
      value,
      'answer',
      // 'offer',
    );
    // log(sdp);
    // log(description.toMap().toString());
    await _peerConnection!.setRemoteDescription(description);
  }

  @override
  Future<void> addCandidate(String value) async {
    final session = await jsonDecode(value);
    log((session['candidate'] as String?) ?? '');
    final candidate = RTCIceCandidate(
      session['candidate'] as String?,
      session['sdpMid'] as String?,
      session['sdpMlineIndex'] as int?,
    );
    await _peerConnection!.addCandidate(candidate);
  }

  String _session(RTCSessionDescription description) {
    try {
      return description.sdp!;
      // final j = jsonDecode(description.sdp!);
      // final j2 = parse(description.sdp!);
      // print(j);
      // log('$j2');
      // return j2;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Map<String, dynamic> get _constraints => {'offerToReceiveVideo': 1};

  Map<String, dynamic> get _loopbackConstraints => <String, dynamic>{
        'mandatory': {},
        'optional': [
          {'DtlsSrtpKeyAgreement': false},
        ],
      };
}
