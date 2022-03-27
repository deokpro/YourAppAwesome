import 'package:flutter/material.dart';
import 'package:yourappawesome/page/home/home_main.dart';
import 'package:yourappawesome/page/login/login_component/login_custom_form.dart';
import 'package:yourappawesome/page/login/login_component/login_logo.dart';
import 'package:yourappawesome/page/login/login_style/login_size.dart';


class LoginPage extends StatelessWidget {
  static String routeName = '/LoginPage';
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () => Navigator.pushNamed(context, HomeMain.routeName),
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            const SizedBox(height: loginXlargeGap,),
            const LoginLogo(title: "Login"),
            const SizedBox(height: loginLargeGap,),
            LoginCustomForm(),
          ],
        ),
      ),
      
    );
  }
}