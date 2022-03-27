import 'package:flutter/material.dart';
import 'package:yourappawesome/page/kakao/kakao_model/kakao_model_tab.dart';


class KakaoMorePage extends StatelessWidget {
  const KakaoMorePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.only(top:20),
        itemCount: kakaoTabs.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(          
          crossAxisCount: 4,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(kakaoTabs[index].icon),
              ),
              Text(kakaoTabs[index].text),
            ],
          );
        },
        
        
      ),
    );
  }
}