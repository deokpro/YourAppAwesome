import 'package:flutter/material.dart';

ThemeData kakaoTheme() {
  return ThemeData(
    primarySwatch: _primaryWhite,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.grey[100],
    )
  );
}

// MaterialColor - white
const MaterialColor _primaryWhite = MaterialColor(
  0xFFFFFFFF, //   0xFFeeeeee,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);


BottomNavigationBarThemeData kakaoUserDetailBottomNavigationBarTheme() {
  return const BottomNavigationBarThemeData(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    unselectedItemColor: Colors.white,
  );
}