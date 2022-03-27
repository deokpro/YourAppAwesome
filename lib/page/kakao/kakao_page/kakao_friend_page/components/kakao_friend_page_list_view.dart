import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yourappawesome/page/kakao/kakao_model/kakao_model_user.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_friend_page/components/kakao_friend_page_list_tile.dart';
import 'package:yourappawesome/page/kakao/kakao_page/kakao_user_detail/kakao_user_page_detail.dart';
import 'package:yourappawesome/store/kakao_store.dart';

class KakaoFriendPageListView extends StatelessWidget {
  const KakaoFriendPageListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: kakaoFriends.length + 1, // +1 = me
      itemBuilder: (BuildContext context, int index) {
        return index == 0 
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (() {
                context.read<KakaoStore>().setDetailPageUser(user: kakaoMe);
                Navigator.pushNamed(context, KakaoUserPageDetail.routeName);
              }),
              child: KakaoFriendPageListTile(user: kakaoMe,)),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("친구  ${kakaoFriends.length}"),
            )
          ],
        )
        
        : InkWell(
          onTap: (() {
            context.read<KakaoStore>().setDetailPageUser(user: kakaoFriends[index-1]);
            Navigator.pushNamed(context, KakaoUserPageDetail.routeName);
          }),
          child: KakaoFriendPageListTile(user: kakaoFriends[index-1])
        );
      },
    );
  }
}
