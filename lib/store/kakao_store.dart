import 'package:flutter/cupertino.dart';
import 'package:yourappawesome/page/kakao/kakao_model/kakao_model_user.dart';

class KakaoStore extends ChangeNotifier {
  KakaoModelUser detailPageUser = kakaoMe;

  setDetailPageUser({required KakaoModelUser user}) {
    detailPageUser = user;
    // notifyListeners();
  }
}