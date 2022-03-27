import 'package:flutter/material.dart';
import 'package:yourappawesome/page/store_ui/store_ui_model/store_ui_model_store_tab_bar.dart';

class StoreUiTabBar extends StatelessWidget {
  const StoreUiTabBar({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            tabs: List.generate(
              storeTabBarSampleData.length,
              (index) => Tab(text: storeTabBarSampleData[index].text)),
          ),
          // TabBarView(children: [],) 생략
        ],
      ),
      
    );
  }
}
