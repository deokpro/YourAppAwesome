
import 'package:flutter/material.dart';

class CarrotMarketBottomTitleIcon extends StatelessWidget {
  final IconData iconData;
  final String title;

  const CarrotMarketBottomTitleIcon({Key? key, required this.iconData, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Icon(iconData, size: 30),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
