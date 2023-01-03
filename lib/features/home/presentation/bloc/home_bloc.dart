import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:demo_webrtc/features/home/home.dart';
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
  }

  final IWebRTCRepository _repository;

  late final RTCVideoRenderer _localRender;
  late final RTCVideoRenderer _remoteRender;
  late final StreamSubscription<WebRTCData> _subscription;
  RTCVideoRenderer get localRender => _localRender;
  RTCVideoRenderer get remoteRender => _remoteRender;

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
    Wakelock.disable();
    return super.close();
  }
}
