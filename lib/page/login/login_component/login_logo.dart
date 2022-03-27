import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginLogo extends StatelessWidget {
  final String title;
  const LoginLogo({ Key? key, required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/login/login_logo.svg",
          height: 70,
          width: 70,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ],
      
    );
  }
}