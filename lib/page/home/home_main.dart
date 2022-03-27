import 'package:flutter/material.dart';
import 'package:yourappawesome/page/home/home_page/home_item_list_page/home_item_list_page.dart';
import 'package:yourappawesome/page/home/home_style/home_theme.dart';
import 'package:yourappawesome/routes/routes.dart';

class HomeMain extends StatelessWidget {
  static String routeName = "/HomeMain";

  const HomeMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: homeTheme(),
      home: const HomeItemListPage(),
    );
  }
}