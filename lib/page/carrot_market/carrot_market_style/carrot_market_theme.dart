import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData carrotMarketThemeData() {
  return ThemeData(
    textTheme: _carrotMarketTextTheme(),
    primarySwatch: primaryWhite,
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0)
      ),
      margin: const EdgeInsets.all(0),
    ),
    
    // scaffoldBackgroundColor: Colors.white70,
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




TextTheme _carrotMarketTextTheme() {
  return TextTheme(
    headline1: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    headline2: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    bodyText1: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    bodyText2: GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey),
    subtitle1: GoogleFonts.openSans(fontSize: 15.0, color: Colors.black),
  );
}