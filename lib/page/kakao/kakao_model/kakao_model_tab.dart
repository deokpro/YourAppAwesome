import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KakaoModelTab {
  final IconData icon;
  final String text;

  KakaoModelTab({
    required this.icon,
    required this.text,
  });
} 

List<KakaoModelTab> kakaoTabs = [
  KakaoModelTab(icon: FontAwesomeIcons.envelope, text: "메일"),
  KakaoModelTab(icon: FontAwesomeIcons.calendarAlt, text: "캘린더"),
  KakaoModelTab(icon: FontAwesomeIcons.archive, text: "서랍"),
  KakaoModelTab(icon: FontAwesomeIcons.gift, text: "선물하기"),
  KakaoModelTab(icon: FontAwesomeIcons.laugh, text: "이모티콘"),
  KakaoModelTab(icon: FontAwesomeIcons.shopify, text: "쇼핑하기"),
  KakaoModelTab(icon: FontAwesomeIcons.tshirt, text: "스타일"),
];
