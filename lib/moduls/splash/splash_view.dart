import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/home_layout.dart';

class SplashView extends StatelessWidget {
  static const String routeName = 'Splash_Screen';

  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);
    });
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Splash_view.png"),
              fit: BoxFit.fill)),
    );
  }
}
