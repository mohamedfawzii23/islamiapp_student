import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xffB7935F),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: const Color(0xffB7935F),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(
          size: 25,
          color: Colors.black,
        ),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 25,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          color: Colors.white.withOpacity(0.5),
          fontWeight: FontWeight.w300,
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black)));
}
