import 'package:flutter/material.dart';

ThemeData recipeTheme() {
  return ThemeData(
    fontFamily: "PatuaOne",
    appBarTheme: recipeAppBarTheme()
  );
}

AppBarTheme recipeAppBarTheme() {
  return const AppBarTheme(
    color: Colors.white,
    elevation: 1,
    iconTheme: IconThemeData(
      color: Colors.black
    )
  );
}