import 'package:flutter/material.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_bottom_navigator/carrot_market_bottom_navigator.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_style/carrot_market_theme.dart';
import 'package:yourappawesome/routes/routes.dart';

class CarrotMarketMain extends StatelessWidget {
  static String routeName = "/CarrotMarketMain";

  const CarrotMarketMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: carrotMarketThemeData(),
      home: const CarrotMarketBottomNavigator(),
      
    );
  }
}

