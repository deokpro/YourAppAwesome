import 'package:flutter/material.dart';

ThemeData homeTheme() { 
  return ThemeData(
    primarySwatch: primaryWhite,
    appBarTheme: const AppBarTheme(
      elevation: 1
    )

  );
}




const MaterialColor primaryWhite = MaterialColor(
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