import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String imageAssetPath;
  final String title;
  final String subText;
  const RecipeCard({
    Key? key, required this.imageAssetPath, required this.title, required this.subText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2/1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(imageAssetPath, fit: BoxFit.cover)),
            ),
            const SizedBox(height: 10,),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Text(subText, style: const TextStyle(fontSize: 12, color: Colors.grey),),
        ],
      ),
    );
  }
}
