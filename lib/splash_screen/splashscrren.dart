import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../home/homescreen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "Splash_Screen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash_background.png',
      fit: BoxFit.cover,
    );
  }
}
