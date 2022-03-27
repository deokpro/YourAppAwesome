import 'package:flutter/material.dart';
import 'package:yourappawesome/page/store_ui/store_ui_page/store_ui/store_ui_page.dart';
import 'package:yourappawesome/page/store_ui/store_ui_style/store_ui_theme.dart';
import 'package:yourappawesome/routes/routes.dart';



class StoreUiMain extends StatelessWidget {
  static String routeName = "/storeuimain";
  
  const StoreUiMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: storeUiData(),
      home: const StoreUiPage(),
    );
  }
}