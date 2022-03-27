import 'package:flutter/material.dart';
import 'package:yourappawesome/page/home/home_main.dart';

class SplashMain extends StatelessWidget {
  static String routeName = "/SplashMain";

  const SplashMain({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    // delayed
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, HomeMain.routeName);
    });


    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Image.asset("assets/splash/splash_firework.gif",
            width: double.infinity, height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.center,
            child: const Text(
              "Your App Awesome",
              textAlign: TextAlign.center,
              style: TextStyle(
                decorationColor: Color.fromARGB(255, 184, 248, 251),
                decoration: TextDecoration.none,

                color: Colors.white, fontSize: 50
              ),
            ),
          ),
          
        ]
      ) 
    );
  }
}