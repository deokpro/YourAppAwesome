import 'package:flutter/material.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_model/chat_message.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_chatting/components/carrot_market_image_container.dart';

class CarrotMarketChatContainer extends StatelessWidget {
  const CarrotMarketChatContainer({
    Key? key,
    required this.chatMessage,
  }) : super(key: key);

  final CarrotMarketChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            CarrotMarketImageContainer(
              width: 50,
              height: 50,
              borderRadius: 25,
              imageUrl: chatMessage.profileImage,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: chatMessage.sender,
                          style: const TextTheme().bodyText1),
                      TextSpan(text: chatMessage.location),
                      TextSpan(text: ' • ${chatMessage.sendDate}'),
                    ]),
                  ),
                  const Spacer(),
                  Text(
                    chatMessage.message,
                    style: const TextTheme().bodyText1,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Visibility(
              visible: chatMessage.imageUri != null,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CarrotMarketImageContainer(
                    width: 50,
                    height: 50,
                    borderRadius: 8,
                    imageUrl: chatMessage.imageUri ?? '',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
