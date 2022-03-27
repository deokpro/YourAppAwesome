import 'package:flutter/material.dart';
import 'package:yourappawesome/page/recipe/recipe_page/recipe_page.dart';
import 'package:yourappawesome/page/recipe/recipe_style/recipe_theme.dart';
import 'package:yourappawesome/routes/routes.dart';

class RecipeMain extends StatelessWidget {
  static String routeName = '/recipemain';
  const RecipeMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: recipeTheme(),
      home: const RecipePage(),
    );
  }
}