import 'package:flutter/material.dart';
import 'package:yourappawesome/page/login/login_page/login_page.dart';
import 'package:yourappawesome/routes/routes.dart';

class LoginMain extends StatelessWidget {
  static String routeName = "/loginmain";
  const LoginMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize: const Size(400, 60),
          )
        )
      ),
      home: const LoginPage(),

    );
  }
}