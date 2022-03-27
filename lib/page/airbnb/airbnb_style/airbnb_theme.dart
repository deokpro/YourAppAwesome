import 'package:flutter/material.dart';

ThemeData airbnbTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      // color: Colors.transparent,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.red
      ),
      elevation: 0,
    ),
  );
} 


// titleTextStyle: TextStyle(color: Colors.black),