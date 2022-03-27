import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yourappawesome/page/home/home_model/home_item.dart';
import 'package:yourappawesome/page/home/home_style/home_text.dart';

class HomeItemListView extends StatelessWidget {
  const HomeItemListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: homeItem.length,
      itemBuilder: (context, index) {
      return Card(
        margin: const EdgeInsets.only(bottom: 12),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, homeItem[index].routeName);
              },
              child: _header(homeItem[index])),
            _rowScreenList(context, homeItem[index]),
          ],
        ),
      );
    },);
  }

  SizedBox _rowScreenList(BuildContext context, HomeItem item) {
    return SizedBox(
          height: 250,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.mouse,
                PointerDeviceKind.touch,
              },
            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: item.screenPath.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 200,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              item.screenPath[index],
                              fit: BoxFit.fitHeight, 
                              width: 120, 
                              height: 200,
                            )
                          ),
                        ],
                      )
                    ),
                    const SizedBox(width: 30,),
                  ],
                );
              },
              
            ),
          ),
        );
  }

  Container _header(HomeItem item) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10,),
              SizedBox(
                width: 70,
                height: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(item.iconPath, fit: BoxFit.cover,)),
              ),
    
              const SizedBox(width: 10,),
    
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(item.title, style: homeItemTitle(),),
                  Text(item.date, style: homeItemDate(),),
                ],
              ),
            ],
          ),
    );
  }
}