import 'package:flutter/material.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_model/neighborhood_life.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_chatting/components/carrot_market_image_container.dart';


class CarrotMarketLifeHeader extends StatelessWidget {

  const CarrotMarketLifeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      elevation: 0.5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const CarrotMarketImageContainer(
                borderRadius: 6.0,
                imageUrl: 'https://placeimg.com/200/100/any',
                width: 45.0,
                height: 45.0),
            const SizedBox(width: 16.0),
            Expanded(
              child: Text(
                carrotMarketLifeTitle,
                style: const TextTheme().bodyText1,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}