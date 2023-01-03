import 'package:demo_webrtc/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DemoWebRTCApp extends StatelessWidget {
  const DemoWebRTCApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Web RTC',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      builder: (context, child) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
        return child!;
      },
    );
  }
}
