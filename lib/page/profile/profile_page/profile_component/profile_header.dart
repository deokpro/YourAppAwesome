import 'package:flutter/material.dart';
import 'package:yourappawesome/page/profile/profile_style/profile_text.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20,),
        const SizedBox(
          width: 100,
          height: 100,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/profile/avatar.png'),
            ),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Choi DeokHee", style: profileHeaderTitle(),),
            Text("프로그래머/개발자", style: profileHeaderSubText(),),
            Text("Flutter Dart Python", style: profileHeaderSubSubText(),),
          ],
        )
      ],
    );
  }
}
