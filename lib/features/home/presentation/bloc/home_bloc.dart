import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:demo_webrtc/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wakelock/wakelock.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._repository) : super(HomeState.initial()) {
    on<_Start>(_startToState);
    on<_RemoteConnect>(_remoteConnectToState);
    on<_Offer>(_offerToState);
    on<_Answer>(_answerToState);
    on<_Description>(_descriptionToState);
    on<_Candidate>(_candidateToState);
    on<_SdpRecived>(_sdpRecivedToState);
  }

  final IWebRTCRepository _repository;

  late final RTCVideoRenderer _localRender;
  late final RTCVideoRenderer _remoteRender;
  late final StreamSubscription<WebRTCData> _subscription;
  RTCVideoRenderer get localRender => _localRender;
  RTCVideoRenderer get remoteRender => _remoteRender;

  late final TextEditingController _controller;
  TextEditingController get controller => _controller;

  void init() {
    _controller = TextEditingController();
    try {
      _repository.initSockets();
    } catch (_) {
      print(_);
    }
  }

  Future<void> _startToState(_, Emitter<HomeState> emit) async {
    try {
      Wakelock.enable();
      emit(state.copyWith(localStatus: LocalStatus.loading));
      _subscription = _repository.onLocalWebRTC.listen(_localListener);
      _localRender = await _repository.initLocalRender();
      emit(state.copyWith(localStatus: LocalStatus.loaded));
    } catch (_) {
      emit(state.copyWith(localStatus: LocalStatus.error));
    }
  }

  void _localListener(WebRTCData data) {
    if (data is LocalAudioTracks) {
      for (final audioTrack in data.audioTracks) {
        log('localaudio-track: $audioTrack');
      }
    }
    if (data is LocalVideoTracks) {
      for (final videoTrack in data.videoTracks) {
        log('local-video-track: $videoTrack');
      }
    }
    if (data is RemoteAudioTracks) {
      for (final audioTrack in data.audioTracks) {
        log('remote-audio-track: $audioTrack');
      }
    }
    if (data is RemoteVideoTracks) {
      for (final videoTrack in data.videoTracks) {
        log('local-video-track: $videoTrack');
      }
    }
    if (data is RemoteSDPRecived) {
      add(HomeEvent.onSdpRecived(sdp: data.sdp));
    }
  }

  Future<void> _remoteConnectToState(_, Emitter<HomeState> emit) async {
    try {
      emit(state.copyWith(remoteStatus: RemoteStatus.loading));
      _remoteRender = await _repository.initRemoteRender();
      emit(state.copyWith(remoteStatus: RemoteStatus.loaded));
    } catch (_) {
      emit(state.copyWith(remoteStatus: RemoteStatus.error));
    }
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();
    await _repository.close();
    _controller.dispose();
    Wakelock.disable();
    return super.close();
  }

  Future<void> _offerToState(_, Emitter<HomeState> emit) async {
    try {
      final session = await _repository.createOffer();
      await _repository.sendSdp(session);
    } catch (_) {
      print(_);
    }
  }

  Future<void> _answerToState(_, Emitter<HomeState> emit) async {
    try {
      final session = await _repository.createAnswer();
      await _repository.sendSdp(session);
    } catch (_) {
      print(_);
    }
  }

  Future<void> _descriptionToState(_, Emitter<HomeState> emit) async {
    try {
      await _repository.setRemoteDescription(
        state.sdpForDescription ?? state.sdpForSetCandidate!,
      );
      // emit(state.copyWith(activeAnswer: true));
    } catch (_) {
      print(_);
    }
  }

  Future<void> _candidateToState(_, Emitter<HomeState> emit) async {
    try {
      await _repository.addCandidate(
        state.sdpForDescription ?? state.sdpForSetCandidate!,
      );
    } catch (_) {
      print(_);
    }
  }

  String get value => _controller.text;

  void _sdpRecivedToState(
    _SdpRecived event,
    Emitter<HomeState> emit,
  ) {
    final state = this.state.copyWith(
          activeAnswer: true,
          activeSetCandidate: true,
          activeSetDescription: true,
          sdpForDescription: event.sdp,
          sdpForSetCandidate: event.sdp,
        );
    emit(state);
  }
}
