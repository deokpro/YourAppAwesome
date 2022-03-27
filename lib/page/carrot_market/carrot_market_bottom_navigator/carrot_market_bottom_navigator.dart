import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_chatting/carrot_market_chatting_screen.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_home/carrot_market_home.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_my_carrot/carrot_market_my_carrot.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_near_me/carrot_market_near_me.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_neighborhood_life/carrot_market_neighborhood_life_screen.dart';

class CarrotMarketBottomNavigator extends StatefulWidget {
  static String routeName = "/CarrotMarketBottomNavigator";
  const CarrotMarketBottomNavigator({ Key? key }) : super(key: key);

  @override
  State<CarrotMarketBottomNavigator> createState() => _CarrotMarketBottomNavigatorState();
}

class _CarrotMarketBottomNavigatorState extends State<CarrotMarketBottomNavigator> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          CarrotMarketHome(),
          CarrotMarketNeighborhoodLifeScreen(),
          CarrotMarketNearMe(),
          CarrotMarketChattingScreen(),
          CarrotMarketMyCarrot(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54, 
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: '홈', icon: Icon(CupertinoIcons.home)),
          BottomNavigationBarItem(
              label: '동네생활', icon: Icon(CupertinoIcons.square_on_square)),
          BottomNavigationBarItem(
              label: '내 근처', icon: Icon(CupertinoIcons.placemark)),
          BottomNavigationBarItem(
              label: '채팅', icon: Icon(CupertinoIcons.chat_bubble_2)),
          BottomNavigationBarItem(
              label: '나의 당근', icon: Icon(CupertinoIcons.person)),
        ],
      ),
    );
  }
}