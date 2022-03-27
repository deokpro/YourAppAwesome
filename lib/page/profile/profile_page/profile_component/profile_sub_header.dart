import 'package:flutter/material.dart';

class ProfileSubHeader extends StatelessWidget {
  const ProfileSubHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Text("50", style: TextStyle(fontSize: 15),),
            SizedBox(height: 2,),
            Text("Posts", style: TextStyle(fontSize: 15),),
          ],
        ),

        Container(
          width: 2,
          height: 60,
          color: Colors.blue,
        ),

        Column(
          children: const [
            Text("10", style: TextStyle(fontSize: 15),),
            SizedBox(height: 2,),
            Text("Likes", style: TextStyle(fontSize: 15),),
          ],
        ),

        Container(
          width: 2,
          height: 60,
          color: Colors.blue,
        ),
        
        Column(
          children: const [
            Text("3", style: TextStyle(fontSize: 15),),
            SizedBox(height: 2,),
            Text("Share", style: TextStyle(fontSize: 15),),
          ],
        ),
      ],
    );
  }
}

