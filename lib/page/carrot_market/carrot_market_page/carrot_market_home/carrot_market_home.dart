import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_model/product.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_home/components/carrot_market_home_item_detail.dart';
import 'package:yourappawesome/page/home/home_main.dart';

class CarrotMarketHome extends StatelessWidget {
  const CarrotMarketHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
         onPressed: () => Navigator.pushNamed(context, HomeMain.routeName),
         icon: const Icon(Icons.arrow_back),
        ),
        title: Row(
          children: [
            const Text("좌동"),
            PopupMenuButton(
              icon: const Icon(CupertinoIcons.chevron_down),
              itemBuilder: (BuildContext context) {
                return const [
                  PopupMenuItem(child: Text("우동"),),
                  PopupMenuItem(child: Text("돈가스"),),
                  PopupMenuItem(child: Text("동동"),),
                ];
              }
            ),
          ],
        ),

        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
      ),

      body: ListView.builder(
        controller: ScrollController(),
        itemCount: carrotMarketProductList.length,
        itemBuilder: (BuildContext context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 10),
          child: CarrotMarketHomeItemDetail(productItem:carrotMarketProductList[index]));
      })      
    );
  }
}

