import 'package:app_stream_anime/constant/colors.dart';
import 'package:flutter/material.dart';

import 'view/auth/login_page.dart';
import 'view/home/home_page.dart';
import 'view/splasscreenPage/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.blackColors,
          elevation: 0,
        ),
        scaffoldBackgroundColor: AppColors.blackColors,
      ),
      title: 'GodSlayerFlix.',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
