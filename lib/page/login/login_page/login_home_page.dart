import 'package:flutter/material.dart';
import 'package:yourappawesome/page/login/login_component/login_logo.dart';

class LoginHomePage extends StatelessWidget {
  static String routeName = '/LoginHomePage';
  const LoginHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 200,),
            const LoginLogo(title: "Care Soft"),
            const SizedBox(height: 50,),
            TextButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text("Get Started"))
          ],
        ),
      ),
      
    );
  }
}