import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/layout_view.dart';

class SplashView extends StatefulWidget {
  static String RouteName = '/';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _Splash_viewState();
}

class _Splash_viewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayoutView.RouteName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Image.asset(
        'assets/image/Splash_background.png',
        height: mediaQuery.height,
        width: mediaQuery.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
