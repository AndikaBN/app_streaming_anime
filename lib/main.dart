import 'package:app_stream_anime/view/sliderPage/slider_page.dart';
import 'package:flutter/material.dart';

import 'view/loginPage/login_page.dart';
import 'view/splasscreenPage/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GodSlayerFlix.',
      routes: {
        '/': (context) => const SplashScreen(),
        '/caurosel': (context) => const SliderPage(),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
