import 'package:flutter/material.dart';
import 'package:yourappawesome/page/profile/profile_page/profile_page.dart';
import 'package:yourappawesome/page/profile/profile_style/profile_theme.dart';
import 'package:yourappawesome/routes/routes.dart';

class ProfileMain extends StatelessWidget {
  static String routeName = "/profilemain";
  const ProfileMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: profileTheme(),
      routes: routes,
      home: const ProfilePage(),
      
    );
  }
}