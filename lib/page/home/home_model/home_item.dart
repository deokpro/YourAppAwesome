// ignore_for_file: file_names

import 'package:yourappawesome/page/airbnb/airbnb_main.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_main.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_home/carrot_market_home.dart';
import 'package:yourappawesome/page/kakao/kakao_main.dart';
import 'package:yourappawesome/page/login/login_main.dart';
import 'package:yourappawesome/page/profile/profile_main.dart';
import 'package:yourappawesome/page/recipe/recipe_main.dart';
import 'package:yourappawesome/page/shopping_cart/shopping_cart_main.dart';
import 'package:yourappawesome/page/store_ui/store_ui_main.dart';

class HomeItem {
  final String routeName;
  final String iconPath;
  final String title;
  final String date;
  final List<String> screenPath;

  HomeItem({
    required this.routeName,
    required this.iconPath,
    required this.title,
    required this.date,
    required this.screenPath,
  });
}

List<HomeItem> homeItem = <HomeItem> [

    // kakao
  HomeItem(
    routeName: CarrotMarketMain.routeName,
    iconPath: "assets/carrot_market/carrot_market_icon.png",
    title: "Carrot Market",
    date: "2022-03-27",
    screenPath: [
      "assets/carrot_market/carrot_market_home.png",
      "assets/carrot_market/carrot_market_neighborhood_life.png",
      "assets/carrot_market/carrot_market_my_carrot.png",
      "assets/carrot_market/carrot_market_chatting.png",
      "assets/carrot_market/carrot_market_near_me.png",
    ],
  ),


  // kakao
  HomeItem(
    routeName: KakaoMain.routeName,
    iconPath: "assets/kakao/kakao_icon.png",
    title: "Kakao Talk",
    date: "2022-03-13",
    screenPath: [
      "assets/kakao/kakao_main.png",
      "assets/kakao/kakao_detail.png",
      "assets/kakao/kakao_chat.png",
      "assets/kakao/kakao_chat_screen.png",
      "assets/kakao/kakao_more.png",
    ],
  ),

  // Airbnb
  HomeItem(
    routeName: AirbnbMain.routeName,
    iconPath: "assets/airbnb/airbnb_icon.png",
    title: "Air Bnb",
    date: "2022-03-06",
    screenPath: [
      "assets/airbnb/airbnb_main.png",
      "assets/airbnb/airbnb_after.png",
    ],
  ),

  // login
  HomeItem(
    routeName: LoginMain.routeName,
    iconPath: "assets/login/login_icon.png",
    title: "Login",
    date: "2022-02-28",
    screenPath: [
      "assets/login/login_login.png",
      "assets/login/login_home.png"

    ],
  ),

  // Profile
  HomeItem(
    routeName: ProfileMain.routeName,
    iconPath: "assets/profile/profile_icon.png",
    title: "Profile",
    date: "2022-02-21",
    screenPath: [
      "assets/profile/profile_home.png",
    ],
  ),

  // Recipes
  HomeItem(
    routeName: RecipeMain.routeName,
    iconPath: "assets/recipe/recipes_icon.PNG",
    title: "Recipes",
    date: "2022-02-14",
    screenPath: [
      "assets/recipe/recipes_home.png",
    ],
  ),

  // shopping_cart
  HomeItem(
    routeName: ShoppingCartMain.routeName,
    iconPath: "assets/shopping_cart/shopping_cart_icon.png",
    title: "Shopping Cart",
    date: "2022-02-7",
    screenPath: [
      "assets/shopping_cart/shopping_cart_home.png",
    ],
  ),

  // store_ui
  HomeItem(
    routeName: StoreUiMain.routeName,
    iconPath: "assets/store_ui/store_ui_icon.PNG",
    // iconPath: "assets/shopping_cart/shopping_cart_icon.png",
    title: "Store",
    date: "2022-02-1",
    screenPath: [
      "assets/store_ui/store_ui_home.png",
    ],
  ),

];