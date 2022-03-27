import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yourappawesome/page/home/home_main.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_chat_list_page/kakao_chat_list_page.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_friend_page/components/kakao_friend_page_list_view.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_more_page/kakao_more_page.dart';




class KakaoFriendPage extends StatefulWidget {
  static String routeName = "/KakaoFriendPage";
  
  const KakaoFriendPage({ Key? key }) : super(key: key);

  @override
  State<KakaoFriendPage> createState() => _KakaoFriendPageState();
}

class _KakaoFriendPageState extends State<KakaoFriendPage> {
  int _selectedIndex = 0;
  final List<String> _appBarTitle = <String>[
    "친구",
    "채팅",
    "더보기",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _kakaoFriendPageAppBar(),

      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          KakaoFriendPageListView(),
          KakaoChatListPage(),
          KakaoMorePage(),
        ],
      ),
      
      bottomNavigationBar: kakaoFriendPageNavigationBar(),
      
    );
  }


  AppBar _kakaoFriendPageAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.pushNamed(context, HomeMain.routeName),
        icon: const Icon(Icons.arrow_back),
      ),
      title: Text(_appBarTitle[_selectedIndex]),
    );
  }


  BottomNavigationBar kakaoFriendPageNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.comment),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.ellipsisH),
          label: "",
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      onTap: _onItemTapped,
    );
  }
}

