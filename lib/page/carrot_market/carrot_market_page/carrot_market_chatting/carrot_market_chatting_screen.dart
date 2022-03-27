import 'package:flutter/material.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_model/chat_message.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_chatting/components/carrot_market_chat_container.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_style/carrot_market_size.dart';

class CarrotMarketChattingScreen extends StatelessWidget {
  
  const CarrotMarketChattingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('채팅'),
        bottom: carrotMarketAppBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          carrotMarketChatMessageList.length,
          (index) => Card(
            margin: const EdgeInsets.only(bottom: 10),
            child: CarrotMarketChatContainer(chatMessage: carrotMarketChatMessageList[index])),
        ),
      ),
    );
  }
}
