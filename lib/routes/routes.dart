
import 'package:flutter/material.dart';
import 'package:yourappawesome/page/airbnb/airbnb_main.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_bottom_navigator/carrot_market_bottom_navigator.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_main.dart';
import 'package:yourappawesome/page/home/home_main.dart';
import 'package:yourappawesome/page/kakao/kakao_main.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_chat_list_page/kakao_chat_list_page.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_chat_page/kakao_chat_page.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_friend_page/kakao_friend_page.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_user_detail/kakao_user_page_detail.dart';
import 'package:yourappawesome/page/login/login_main.dart';
import 'package:yourappawesome/page/profile/profile_main.dart';
import 'package:yourappawesome/page/recipe/recipe_main.dart';
import 'package:yourappawesome/page/shopping_cart/shopping_cart_main.dart';
import 'package:yourappawesome/page/splash/splash_main.dart';
import 'package:yourappawesome/page/store_ui/store_ui_main.dart';

final Map<String, WidgetBuilder> routes = {

  // Splash
  SplashMain.routeName :(context) => const SplashMain(),

  // Home
  HomeMain.routeName : (context) => const HomeMain(),

  // Carrot MarketMain
  CarrotMarketMain.routeName :(context) => const CarrotMarketMain(),

  // Kakao
  KakaoMain.routeName : (context) => const KakaoMain(),
  KakaoUserPageDetail.routeName : (context) => const KakaoUserPageDetail(),
  KakaoFriendPage.routeName :(context) => const KakaoFriendPage(),
  KakaoFriendPage.routeName :(context) => const KakaoFriendPage(),
  KakaoChatListPage.routeName :(context) => const KakaoChatListPage(),
  KakaoChatPage.routeName :(context) => const KakaoChatPage(),
  CarrotMarketBottomNavigator.routeName :(context) => const CarrotMarketBottomNavigator(),

  // AirBnb
  AirbnbMain.routeName :(context) => const AirbnbMain(),

  // carrot market
  CarrotMarketMain.routeName : (context) => const CarrotMarketMain(),

  // login 
  LoginMain.routeName : (context) => const LoginMain(),

  // profile 
  ProfileMain.routeName : (context) => const ProfileMain(),

  // recipe
  RecipeMain.routeName : (context) => const RecipeMain(),

  // shopping cart
  ShoppingCartMain.routeName : (context) => const ShoppingCartMain(),

  // store ui
  StoreUiMain.routeName : (context) => const StoreUiMain(),





};