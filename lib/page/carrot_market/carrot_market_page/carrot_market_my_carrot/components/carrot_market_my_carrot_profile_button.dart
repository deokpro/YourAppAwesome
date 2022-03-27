
import 'package:flutter/material.dart';

class MyCarrotProfileButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const MyCarrotProfileButton({
    Key? key, required this.icon, required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: TextButton(
            style: TextButton.styleFrom(
              minimumSize: const Size(50, 50),
              backgroundColor: Colors.orange[100],
              primary: Colors.orange,
            ),
            onPressed: (){},
            child: Icon(icon,size: 20,)),
        ),
        const SizedBox(height: 10,),
        Text(text, style: const TextStyle(fontWeight: FontWeight.bold),),
      ],
    );
  }
}

