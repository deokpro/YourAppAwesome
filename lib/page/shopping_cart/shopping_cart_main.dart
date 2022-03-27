import 'package:flutter/material.dart';
import 'package:yourappawesome/page/home/home_main.dart';
import 'package:yourappawesome/page/shopping_cart/shopping_cart_component/shopping_cart_card.dart';
import 'package:yourappawesome/page/shopping_cart/shopping_cart_component/shopping_cart_select_image.dart';
import 'package:yourappawesome/page/shopping_cart/shopping_cart_style/shopping_cart_theme.dart';
import 'package:yourappawesome/routes/routes.dart';

class ShoppingCartMain extends StatelessWidget {
  static String routeName = 'ShoppingCartMain';
  const ShoppingCartMain({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: shoppingCartTheme(),
      home: Scaffold(
        appBar: shoppingCartAppBar(context),

      body: ListView(
        children: const [
          ShoppingCartSelectImage(),

          SizedBox(height: 30,),

          Expanded(child: ShoppingCartCard()),
        ],
      ),
      ),
    );
  }

  AppBar shoppingCartAppBar(BuildContext context) {
    return AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, HomeMain.routeName),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: const Text("Shopping Cart"),
        actions: const [
          Icon(Icons.shopping_cart),
          SizedBox(width: 20,),
        ],
      );
  }
}



