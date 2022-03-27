import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:yourappawesome/page/kakao/kakao_model/kakao_model_user.dart';
import 'package:yourappawesome/store/kakao_store.dart';

class KakaoUserPageDetail extends StatelessWidget {
  static String routeName = "/KakaoUserPageDetail";
  const KakaoUserPageDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    KakaoModelUser userData = context.read<KakaoStore>().detailPageUser;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(userData.backgroundImage),
          fit: BoxFit.cover
        )
      ),
      
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _appBar(context),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: _avatarImageNameIntro(userData),
        ),
        bottomNavigationBar: userData == kakaoMe
        ? _myBottomNavigationBar()
        : _userBottomNavigationBar(),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (() => Navigator.pop(context)),
          icon: const Icon(FontAwesomeIcons.times)),

        actions: [
          _appBarActionButton(icon: FontAwesomeIcons.gift),
          const SizedBox(width: 15,),
          _appBarActionButton(icon: FontAwesomeIcons.cog),
          const SizedBox(width: 20,),
        ],
      );
  }

  ElevatedButton  _appBarActionButton({required IconData icon}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const CircleBorder(),
        side: const BorderSide(width: 1, color: Colors.white),
        primary: Colors.transparent,
        onPrimary: Colors.transparent,
        minimumSize: const Size(20,20),
        padding: const EdgeInsets.all(10),
      ),
      onPressed: () {},
      child: Icon(icon, color: Colors.white, size: 20,)
    );
  }

  SizedBox _avatarImageNameIntro(KakaoModelUser userData) {
    return SizedBox(
      width: 200,
      height: 200,
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(userData.backgroundImage),
            radius: 50,
          ),
          const SizedBox(height: 5,),
          Text(userData.name, style: const TextStyle(fontSize: 15, color: Colors.white),),
          const SizedBox(height: 5,),
          Text(userData.intro, style: TextStyle(fontSize: 10, color: Colors.grey[300]),),
        ],
      ),
    );
  }

  BottomNavigationBar _userBottomNavigationBar() {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconSize: 30,
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(FontAwesomeIcons.comment),
          ),
          label: "채팅"),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(FontAwesomeIcons.phone),
          ), label: "통화")
      ],
    );
  }

BottomNavigationBar _myBottomNavigationBar() {
  return BottomNavigationBar(
    showSelectedLabels: true,
    showUnselectedLabels: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconSize: 30,
    fixedColor: Colors.white,
    unselectedItemColor: Colors.white,
    items: const [
      BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Icon(FontAwesomeIcons.comment),
        ),
        label: "나와의 채팅",
      ),

      BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Icon(FontAwesomeIcons.pen),
        ),
        label: "프로필 편집",
      ),
    ],
  );
  }
}