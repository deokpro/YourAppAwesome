import 'package:flutter/material.dart';
import 'package:yourappawesome/page/home/home_main.dart';
import 'package:yourappawesome/page/store_ui/store_ui_page/store_ui/sotre_ui_component/store_ui_tab_bar.dart';


class StoreUiPage extends StatelessWidget {
  const StoreUiPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0x00eeeeee),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pushNamed(context, HomeMain.routeName),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: const Text("Store", style: TextStyle(color: Colors.black),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const StoreUiTabBar(),

            Expanded(
              child: Image.asset("assets/store_ui/bag.jpeg", fit: BoxFit.cover,)
            ),

            const SizedBox(height: 2,),

            Expanded(
              child: Image.asset("assets/store_ui/cloth.jpeg", fit: BoxFit.cover,)
            ),
          ],
        ),
      )
    );
  }
}
