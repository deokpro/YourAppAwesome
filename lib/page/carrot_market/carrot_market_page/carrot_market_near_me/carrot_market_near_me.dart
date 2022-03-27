import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_model/recommend_store.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_near_me/components/carrot_market_bottom_title_icon.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_near_me/components/carrot_market_round_border_text.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_near_me/components/carrot_market_search_text_field.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_near_me/components/carrot_market_store_item.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_style/carrot_market_size.dart';

class CarrotMarketNearMe extends StatelessWidget {
  const CarrotMarketNearMe({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('내 근처'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.pencil)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
        // bottom: appBarBottomLine(), 
      ),
      body: ListView(
        controller: ScrollController(),
        children: [
          const SizedBox(height: 10,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CarrotMarketSearchTextField(),
          ),

          SizedBox(
            height: 66,
            child: ListView.builder(
              controller: ScrollController(),
              scrollDirection: Axis.horizontal,
              itemCount: carrotMarketSearchKeyword.length,
              itemBuilder: (context, index) {
                return Center(
                  child: CarrotMarketRoundBorderText(
                    title: carrotMarketSearchKeyword[index],
                    position: index,
                  ),
                );
              },
            ),
          ),

          Divider(
            color: Colors.grey[100],
            thickness: 10.0,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22.0,
              runSpacing: 30,
              children: const [
                CarrotMarketBottomTitleIcon(title: '구인구직', iconData: FontAwesomeIcons.user),
                CarrotMarketBottomTitleIcon(title: '과외/클래스', iconData: FontAwesomeIcons.edit),
                CarrotMarketBottomTitleIcon(title: '농수산물', iconData: FontAwesomeIcons.appleAlt),
                CarrotMarketBottomTitleIcon(title: '부동산', iconData: FontAwesomeIcons.hotel),
                CarrotMarketBottomTitleIcon(title: '중고차', iconData: FontAwesomeIcons.car),
                CarrotMarketBottomTitleIcon(title: '전시/행사', iconData: FontAwesomeIcons.chessBishop)
              ],
            ),
          ),

          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('이웃들의 추천 가게', style: const TextTheme().headline2,),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 300,
            child: ListView.builder(
              controller: ScrollController(),
              scrollDirection: Axis.horizontal,
              itemCount: carrotMarketRecommendStoreList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: CarrotMarketStoreItem(
                    recommendStore: carrotMarketRecommendStoreList[index],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 40,),


        ],
      ),
      
    );
  }
}