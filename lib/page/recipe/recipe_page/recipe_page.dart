import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourappawesome/page/home/home_main.dart';
import 'package:yourappawesome/page/recipe/recipe_component/recipe_card.dart';
import 'package:yourappawesome/page/recipe/recipe_style/recipe_text.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, HomeMain.routeName),
          icon: const Icon(Icons.arrow_back),
        ),
        actions: const [
          Icon(CupertinoIcons.search),
          SizedBox(width: 15,),
          Icon(CupertinoIcons.heart, color: Colors.red,),
          SizedBox(width: 15,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Text("Recipes", style: textStyleRecipeH4(),),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMenuItem(Icons.food_bank, "ALL"),
                  _buildMenuItem(Icons.emoji_food_beverage, "Coffee"),
                  _buildMenuItem(Icons.fastfood, "Burger"),
                  _buildMenuItem(Icons.local_pizza, "Pizza"),
                ],
              ),
            ),
            const RecipeCard(imageAssetPath: 'assets/recipe/pizza.jpeg',title: "Made Coffee", subText: "Have you ever made your own Once you've tried a homemade you'll never go back.",),
            const RecipeCard(imageAssetPath: 'assets/recipe/coffee.jpeg',title: "Made Coffee", subText: "Have you ever made your own Once you've tried a homemade you'll never go back.",),
            const RecipeCard(imageAssetPath: 'assets/recipe/burger.jpeg',title: "Made Coffee", subText: "Have you ever made your own Once you've tried a homemade you'll never go back.",),


          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.black12,
        )
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(mIcon, color: Colors.redAccent, size: 30,),
          Text(text, style: const TextStyle(color: Colors.black87),),
        ],
      ),
    );
  }
}

