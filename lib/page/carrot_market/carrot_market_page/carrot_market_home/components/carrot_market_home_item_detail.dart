import 'package:flutter/cupertino.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_model/product.dart';

class CarrotMarketHomeItemDetail extends StatelessWidget {
  final CarrotMarketProduct productItem;
  const CarrotMarketHomeItemDetail({
    Key? key, required this.productItem
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(productItem.urlToImage, width: 115, height: 115, fit: BoxFit.cover,)),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Text(productItem.title, style: const TextStyle(fontWeight: FontWeight.w600),),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: productItem.address),
                        TextSpan(text: productItem.publishedAt),
                      ],
                    ),
                  ),
                  Text(productItem.price, style: const TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(
              visible: productItem.heartCount > 0,
              child: Row(
                children: [
                  const Icon(CupertinoIcons.heart),
                  const SizedBox(width: 5,),
                  Text(productItem.heartCount.toString()),
                  const SizedBox(width: 10,),
                ],
              )
            ),
            Visibility(
              visible: productItem.commentsCount> 0,
              child: Row(
                children: [
                  const Icon(CupertinoIcons.chat_bubble_2),
                  const SizedBox(width: 5,),
                  Text(productItem.commentsCount.toString()),
                  const SizedBox(width: 10,),
                ],
              )
            ),
          ],
        )
      ],
    );
  }
}
