import 'package:flutter/material.dart';
import 'package:yourappawesome/page/airbnb/airbnb_page/airbnb_home_page.dart';

import 'package:yourappawesome/page/airbnb/airbnb_style/airbnb_theme.dart';
import 'package:yourappawesome/routes/routes.dart';

class AirbnbMain extends StatelessWidget {
  static String routeName ="/AirbnbMain";
  const AirbnbMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: airbnbTheme(),
      home: const AirbnbHomePage(),
    );
  }
}