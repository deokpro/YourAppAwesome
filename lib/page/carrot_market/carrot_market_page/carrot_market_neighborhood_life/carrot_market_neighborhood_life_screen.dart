import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_model/neighborhood_life.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_neighborhood_life/components/carrot_market_life_body.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_neighborhood_life/components/carrot_market_life_header.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_style/carrot_market_size.dart';

class CarrotMarketNeighborhoodLifeScreen extends StatelessWidget {
  
  const CarrotMarketNeighborhoodLifeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('동네생활'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.plus_rectangle_on_rectangle)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
        bottom: carrotMarketAppBarBottomLine(),
      ),

      body: ListView(
        controller: ScrollController(),
        children: [
          const CarrotMarketLifeHeader(),
          ...List.generate(
            carrotMarketNeighborhoodLifeList.length,
            (index) => Padding(padding: const EdgeInsets.only(bottom: 8.0),
            child: CarrotMarketLifeBody(
              neighborhoodLife: carrotMarketNeighborhoodLifeList[index],
            ),
            ),
          )
        ],
      ),
      
    );
  }
}