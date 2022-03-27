import 'package:flutter/material.dart';
import 'package:yourappawesome/page/airbnb/airbnb_component/airbnb_header_card_Text_field.dart';

class AirbnbHeaderCard extends StatelessWidget {
  const AirbnbHeaderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 80, left: MediaQuery.of(context).size.width > 720 ? MediaQuery.of(context).size.width * 0.15 : 0
      ),
      padding: const EdgeInsets.all(15),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("모두의 숙소에서 숙소를 검색하세요.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          const Text("혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 모두의 숙소에 다 있습니다."),
          const SizedBox(height: 20,),
          const AirbnbHeaderCardTextField(labelHint: "위치",width: double.infinity),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AirbnbHeaderCardTextField(labelHint: "체크인",width: 135),
              AirbnbHeaderCardTextField(labelHint: "체크아웃",width: 135),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AirbnbHeaderCardTextField(labelHint: "어른",width: 135),
              AirbnbHeaderCardTextField(labelHint: "어린이",width: 135),
            ],
          ),
          const SizedBox(height: 20,),
          SizedBox(
            width: double.infinity,
            height: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                primary: Colors.amber.shade900
              ),
              onPressed: (){}, 
              child: const Text("검색"),),
          )
        ],
      ),
    );
  }
}