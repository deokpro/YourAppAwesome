// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AirbnbHeaderCardTextField extends StatelessWidget {
  final String labelHint;
  final double width;
  const AirbnbHeaderCardTextField({
    Key? key, this.labelHint = "", required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        
        decoration: InputDecoration(
          labelText: labelHint,
          labelStyle: const TextStyle(color: Colors.black, fontSize: 15),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}