import 'package:flutter/material.dart';
import 'package:yourappawesome/page/kakao/kakao_model/kakao_model_chat.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_chat_page/kakao_chat_page.dart';

class KakaoChatListPage extends StatelessWidget {
  static String routeName = "/KakaoChatListPage";
  const KakaoChatListPage({ Key? key }) : super(key: key);

  // chats
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: ListView.builder(
          itemCount: kakaoChats.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (() => Navigator.pushNamed(context, KakaoChatPage.routeName)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(kakaoChats[index].image),
                ),
                title: Text(kakaoChats[index].title),
                subtitle: Text(kakaoChats[index].content),
                trailing: Column(
                  children: [
                    Text(kakaoChats[index].time),
                    const SizedBox(height: 5,),
                    Visibility(
                      visible: int.parse(kakaoChats[index].count) != 0 ,
                      child: Container(
                        width: 20,
                        height: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20) 
                        ),
                        child: Text(kakaoChats[index].count, style: const TextStyle(color: Colors.white, ),)
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}