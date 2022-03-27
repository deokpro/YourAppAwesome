import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yourappawesome/page/home/home_component/home_item_list_view.dart';

class HomeItemListPage extends StatelessWidget {
  static String routeName ="/HomeItemListPage";
  
  const HomeItemListPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.ac_unit_rounded),
        title: const Text("Your App Awesome"),
        actions: [
          IconButton(
            iconSize: 30,
            onPressed: () async {
            },
            icon: const Icon(CupertinoIcons.person_crop_circle))
        ],
      ),
      body: const HomeItemListView(),
    );
  }
}
