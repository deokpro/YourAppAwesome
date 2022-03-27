import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarrotMarketIconMenu {
  final String title;
  final IconData iconData;

  CarrotMarketIconMenu({required this.title, required this.iconData});
}

final List<CarrotMarketIconMenu> carrotMarketIconMenu1 = [
  CarrotMarketIconMenu(title: '내 동네 설정', iconData: FontAwesomeIcons.mapMarkerAlt),
  CarrotMarketIconMenu(title: '동네 인증하기', iconData: FontAwesomeIcons.compressArrowsAlt),
  CarrotMarketIconMenu(title: '키워드 알림', iconData: FontAwesomeIcons.tag),
  CarrotMarketIconMenu(title: '모아보기', iconData: FontAwesomeIcons.borderAll)
];

final List<CarrotMarketIconMenu> carrotMarketIconMenu2 = [
  CarrotMarketIconMenu(title: '동네생활 글', iconData: FontAwesomeIcons.edit),
  CarrotMarketIconMenu(title: '동네생활 댓글', iconData: FontAwesomeIcons.commentDots),
  CarrotMarketIconMenu(title: '동네생활 주제 목록', iconData: FontAwesomeIcons.star)
];

final List<CarrotMarketIconMenu> carrotMarketIconMenu3 = [
  CarrotMarketIconMenu(title: '비즈프로필 관리', iconData: FontAwesomeIcons.store),
  CarrotMarketIconMenu(title: '지역광고', iconData: FontAwesomeIcons.bullhorn)
];
