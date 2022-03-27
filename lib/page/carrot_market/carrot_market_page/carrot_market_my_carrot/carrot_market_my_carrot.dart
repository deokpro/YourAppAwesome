import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_model/icon_menu.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_my_carrot/components/carrot_market_my_carrot_header.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_my_carrot/components/carrot_market_my_carrot_menu.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_page/carrot_market_my_carrot/components/carrot_market_my_carrot_profile_button.dart';

class CarrotMarketMyCarrot extends StatelessWidget {
  const CarrotMarketMyCarrot({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("나의 당근"),
        actions: const [
          Icon(Icons.settings, size: 30,),
          SizedBox(width: 20,),
        ],
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,top: 20),
                  child: MyCarrotHeader()
                ),

                const SizedBox(height: 20,),

                UnconstrainedBox(
                  child: OutlinedButton(
                    style: TextButton.styleFrom(
                     minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 0),
                     side: const BorderSide(width: 1,),
                     padding: const EdgeInsets.symmetric(vertical: 20),
                     primary: Colors.black
                    ),
                  onPressed: (){}, child: const Text("프로필 포기")),
                ),

                const SizedBox(height: 20,),

                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      MyCarrotProfileButton(icon: FontAwesomeIcons.receipt, text: "판매내역",),
                      MyCarrotProfileButton(icon: FontAwesomeIcons.shoppingBag, text: "구매내역",),
                      MyCarrotProfileButton(icon: FontAwesomeIcons.heart, text: "관심목록",),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 2,),

          MyCarrotMenu(iconMenu: carrotMarketIconMenu1,),

          const SizedBox(height: 2,),

          MyCarrotMenu(iconMenu: carrotMarketIconMenu2,),

          const SizedBox(height: 2,),
          MyCarrotMenu(iconMenu: carrotMarketIconMenu3,),
        ],
      ),
    );
  }
}
