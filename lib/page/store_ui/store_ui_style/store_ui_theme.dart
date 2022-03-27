import 'package:flutter/material.dart';
import 'package:yourappawesome/page/store_ui/store_ui_style/store_ui_text.dart';

ThemeData storeUiData() {
  return ThemeData(
    appBarTheme: storeUiAppBarTheme(),
    tabBarTheme: storeUiTabBarTheme(),
  );
}

AppBarTheme storeUiAppBarTheme() {
  return const AppBarTheme(
    iconTheme: IconThemeData(
      color: Colors.black
    ),
  );
}


TabBarTheme storeUiTabBarTheme() {
  return TabBarTheme(
    unselectedLabelColor: Colors.grey,
    labelStyle: tabBarLabel(),

    // selected color
    labelColor: Colors.black 

  );
}