import 'package:demo_webrtc/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => GetIt.I.get()
        ..add(const HomeEvent.onStart())
        ..add(const HomeEvent.onRemoteConnect()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter WebRTC Demo'),
          centerTitle: true,
        ),
        body: Stack(
          children: const [
            _RemoteVideo(),
            _LocalVideo(),
          ],
        ),
      ),
    );
  }
}

class _RemoteVideo extends StatelessWidget {
  const _RemoteVideo();

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          switch (state.remoteStatus) {
            case RemoteStatus.initial:
              return const SizedBox.shrink();
            case RemoteStatus.loading:
              return const SizedBox.shrink();
            case RemoteStatus.loaded:
              return RTCVideoView(
                context.read<HomeBloc>().remoteRender,
                key: const Key('remote'),
                filterQuality: FilterQuality.medium,
                objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
              );
            case RemoteStatus.error:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class _LocalVideo extends StatelessWidget {
  const _LocalVideo();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 10,
      height: size.height * .3,
      right: 10,
      width: size.width * .4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            switch (state.localStatus) {
              case LocalStatus.initial:
                return const SizedBox.shrink();
              case LocalStatus.loading:
                return const Center(child: CircularProgressIndicator());
              case LocalStatus.loaded:
                return RTCVideoView(
                  context.read<HomeBloc>().localRender,
                  key: const Key('local'),
                  filterQuality: FilterQuality.medium,
                  objectFit: RTCVideoViewObjectFit.RTCVideoViewObjectFitCover,
                );
              case LocalStatus.error:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
