import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:yourappawesome/page/airbnb/airbnb_component/airbnb_header_card.dart';
import 'package:yourappawesome/page/home/home_main.dart';


class AirbnbHomePage extends StatelessWidget {
  
  const AirbnbHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _airbnbAppBar(context),
      body: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          SizedBox(
            child: Stack(
              children: [
                Container(
                  height: 500,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/airbnb/background.jpeg"),
                      fit: BoxFit.cover,
                    )
                  ),
                ),

                Align(
                  alignment: MediaQuery.of(context).size.width > 720 ? Alignment.topLeft : Alignment.center,
                  child: const AirbnbHeaderCard()),
              ],
            ),
          ),

          //body
          const SizedBox(height: 10,),
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width > 720 ? MediaQuery.of(context).size.width * 0.7 : double.infinity,
                  height: 230,
                  child: Image.asset("assets/airbnb/banner.jpg", fit: BoxFit.cover,),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  width: 300,
                  child: Column(
                    children: [
                      const Text("이제 여행은 가까운 곳에서", style: TextStyle(fontSize: 30, color: Colors.white),),
                      const SizedBox(height: 10,),
                      const Text("새로운 공간에 머물러 보세요. 심야보기, 출장, 여행 등 다양한 목적에 맞는 숙소를 찾아보세요", style: TextStyle(color: Colors.white),),
                      const SizedBox(height: 10,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white
                        ),
                        onPressed: (){}, 
                        child: const Text("가까운 여행지 둘러보기", style: TextStyle(color: Colors.black),)
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("한국 숙소에 직접 다녀간 게스트의 후기", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                Text("rptmxm gnrl 2,500,000개 이상, 평균 평점 4.7점(5점 만점)"),
              ],
            ),
          ),

          const SizedBox(height: 10,),
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width > 720 ? MediaQuery.of(context).size.width * 0.7 : double.infinity,
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    alignment: WrapAlignment .center,
                    children: const [
                      AirbnbReviewCard(imageNum: 1),
                      AirbnbReviewCard(imageNum: 2),
                      AirbnbReviewCard(imageNum: 3),     
                    ],
                  ),
                ),
          
              ],
          
            ),
          ),  


          
          
          
          
        ],
      )
    );
  }

  AppBar _airbnbAppBar(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20),
        child: IconButton(
          onPressed: () => Navigator.pushNamed(context, HomeMain.routeName),
          icon: const Icon(CupertinoIcons.heart)),
      ),
      title: const Text("AIRBNB"),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: const [
              Text("회원가입"),
              SizedBox(width: 15,),
              Text("로그인"),
              SizedBox(width: 20,),
            ],
          ),
        )

      ],
    );
  }
}

class AirbnbReviewCard extends StatelessWidget {
  final int imageNum;
  const AirbnbReviewCard({
    Key? key, this.imageNum = 1
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/airbnb/p$imageNum.jpeg", )
          ),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.red,),
              Icon(Icons.star, color: Colors.red,),
              Icon(Icons.star, color: Colors.red,),
              Icon(Icons.star, color: Colors.red,),
              Icon(Icons.star, color: Colors.red,),
            ],
          ),
          const Text("깔끔하고 다 갖춰져있어서 좋았어요  :) 위치도 완전 좋아욤 다들 여기서 살고 싶다구 ㅋㅋㅋㅋㅋ 화장실도 3개에요 5명이서 놀아도 충분해요"),
        ],
      )
    );
  }
}





class  AirbnbAppBar extends StatelessWidget {
  const AirbnbAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 10, left: 40),
        child: IconButton(
          onPressed: () => Navigator.pushNamed(context, HomeMain.routeName),
          icon: const Icon(CupertinoIcons.heart)),
      ),
      title: const Text("AIRBNB"),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: const [
              Text("회원가입"),
              SizedBox(width: 15,),
              Text("로그인"),
              SizedBox(width: 20,),
            ],
          ),
        )

      ],
    );
  }
}