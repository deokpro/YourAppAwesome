import 'package:flutter/material.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_friend_page/kakao_friend_page.dart';
import 'package:yourappawesome/page/kakao/kakao_style/kakao_theme.dart';
import 'package:yourappawesome/routes/routes.dart';

class KakaoMain extends StatelessWidget {
  static String routeName = "/KakaoMain";

  const KakaoMain ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme: kakaoTheme(),
      home: const KakaoFriendPage(),
    );
  }
}
