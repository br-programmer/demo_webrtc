// ignore_for_file: use_setters_to_change_properties, use_late_for_private_fields_and_variables, inference_failure_on_collection_literal

import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:demo_webrtc/core/core.dart';
import 'package:demo_webrtc/features/home/home.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:injectable/injectable.dart';
import 'package:sdp_transform/sdp_transform.dart';
import 'package:signalr_core/signalr_core.dart';

@Injectable(as: IWebRTCRepository)
class WebRtcRepository implements IWebRTCRepository {
  WebRtcRepository(this._config);

  final Config _config;

  StreamController<WebRTCData>? _controller;
  RTCPeerConnection? _peerConnection;
  MediaStream? _localStream;

  HubConnection? _connection;

  bool _offer = false;

  late final RTCVideoRenderer _localVideoRenderer;
  late final RTCVideoRenderer _remoteVideoRenderer;

  @override
  Future<void> initSockets() async {
    try {
      _connection ??= HubConnectionBuilder()
          .withUrl(
            Uri.https(_config.baseUrl, 'chat/messaging').toString(),
            HttpConnectionOptions(
              accessTokenFactory: _accessTokenFactory,
            ),
          )
          .withAutomaticReconnect()
          .build();
      await _connection!.start();
      _connection!.on('ReceiveMessage', _recivedMessage);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> sendSdp(String value) async {
    try {
      if (!_connection!.state!.connected) {
        await _connection!.start();
      }
      await _connection?.invoke(
        'Send',
        args: [
          '5ba50b4d-5c84-46f6-4cbc-08dae1f6c3c9',
          value,
        ],
      );
    } catch (_) {
      rethrow;
    }
  }

  void _recivedMessage(List<dynamic>? messages) {
    if (messages != null) {
      final message = messages.first;
      final sdp = message['message'] as String;
      // final userFromUsername = message['userFromUsername'] as String;

      _addToStream(RemoteSDPRecived(sdp));
    }
  }

  Future<String?> _accessTokenFactory() {
    try {
      return Future.value(_config.accesToken);
    } catch (_) {
      return Future.value();
    }
  }

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
    await _connection?.stop();
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
    sendSdp(json.encode(candidate.toMap()));
    log('candidate::::${candidate.candidate}');
    log('sdpMid::::${candidate.sdpMid}');
    log('sdpMLineIndex::::${candidate.sdpMLineIndex}');
  }

  void _onIceConnectionState(RTCIceConnectionState state) {
    log('onIceConnectionState:::$state');
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

  @override
  Future<String> createOffer() async {
    final description = await _peerConnection!.createOffer(_constraints);
    await _peerConnection!.setLocalDescription(description);
    _offer = true;
    return _session(description);
  }

  @override
  Future<String> createAnswer() async {
    final description = await _peerConnection!.createAnswer();
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
      _offer ? 'answer' : 'offer',
    );
    // log(sdp);
    // log(description.toMap().toString());
    await _peerConnection!.setRemoteDescription(description);
  }

  @override
  Future<void> addCandidate(String value) async {
    // final session = await jsonDecode(value);
    final session = parse(value);
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
      final j2 = parse(description.sdp!);
      log('$j2');
      return description.sdp!;
      // final j = jsonDecode(description.sdp!);
      // print(j);
      // log('$j2');
      // return j2;
    } catch (e) {
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

extension HubConnectionStateX on HubConnectionState {
  bool get connecting => this == HubConnectionState.connecting;
  bool get reconnecting => this == HubConnectionState.reconnecting;
  bool get disconnecting => this == HubConnectionState.disconnecting;
  bool get connected => this == HubConnectionState.connected;
  bool get disconnected => this == HubConnectionState.disconnected;
}
