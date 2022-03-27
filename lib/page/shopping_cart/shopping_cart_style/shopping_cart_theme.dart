  import 'package:flutter/material.dart';

ThemeData shoppingCartTheme() {
    return ThemeData(
      primarySwatch: shoppingCartThemeKPrimaryColor,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black
        )
      ),
      scaffoldBackgroundColor: shoppingCartThemeKPrimaryColor,

    );
  }



const shoppingCartThemeKPrimaryColor = MaterialColor(
  0xFFeeeeee,
  <int, Color>{
    50: Color(0xFFeeeeee),
    100: Color(0xFFeeeeee),
    200: Color(0xFFeeeeee),
    300: Color(0xFFeeeeee),
    400: Color(0xFFeeeeee),
    500: Color(0xFFeeeeee),
    600: Color(0xFFeeeeee),
    700: Color(0xFFeeeeee),
    800: Color(0xFFeeeeee),
    900: Color(0xFFeeeeee),
  },
);