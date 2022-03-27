
import 'package:flutter/material.dart';
import 'package:yourappawesome/page/kakao/kakao_model/kakao_model_user.dart';

class KakaoFriendPageListTile extends StatelessWidget {
  final KakaoModelUser user;

  const KakaoFriendPageListTile({
    Key? key, required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // contentPadding: EdgeInsets.only(left: 10),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.backgroundImage),
      ),
      title: Text(user.name, style: const TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(user.intro),
      
    );
  }
}