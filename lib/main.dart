import 'package:demo_webrtc/core/core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  await configure(prod.name);
  runApp(const DemoWebRTCApp());
}
