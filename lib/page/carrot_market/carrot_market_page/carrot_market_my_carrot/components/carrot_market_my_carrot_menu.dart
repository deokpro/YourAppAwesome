import 'package:flutter/material.dart';
import 'package:yourappawesome/page/carrot_market/carrot_market_model/icon_menu.dart';

class MyCarrotMenu extends StatelessWidget {
  final List<CarrotMarketIconMenu> iconMenu;
  const MyCarrotMenu({
    Key? key, required this.iconMenu
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: List.generate(iconMenu.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                const SizedBox(width: 20,),
                Icon(iconMenu[index].iconData, size: 15,),
                const SizedBox(width: 20,),
                Text(iconMenu[index].title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
              ],
            ),
          );
        })
      )
    );
  }
}