import 'package:flutter/material.dart';
import 'package:islami_app/core/style/app_theme.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/moduls/quran/surah_details/surah_details_view.dart';
import 'package:islami_app/moduls/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        HomeLayout.routeName: (context) => HomeLayout(),
        SurahDetailView.routeName: (context) => SurahDetailView(),
      },
    );
  }
}
