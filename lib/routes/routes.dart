import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/animate_page_screen.dart';
import 'package:flutter_ui/screen/animation_screen.dart';
import 'package:flutter_ui/screen/circular_progress_screen.dart';
import 'package:flutter_ui/screen/emergency_screen.dart';
import 'package:flutter_ui/screen/headers_screen.dart';
import 'package:flutter_ui/screen/move_screen.dart';
import 'package:flutter_ui/screen/pinterest_screen.dart';
import 'package:flutter_ui/screen/slider_screen.dart';
import 'package:flutter_ui/screen/slideshow_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class _Route {
  final IconData icon;
  final String title;
  final Widget page;

  _Route({
    this.icon,
    this.title,
    this.page,
  });
}
final pageRoutes= <_Route>[
  _Route(icon: FontAwesomeIcons.slideshare, title: 'スライドショー', page: SlideShowScreen()),
  _Route(icon: FontAwesomeIcons.ambulance, title: 'スクロールリスト', page: EmergencyScreen()),
  _Route(icon: FontAwesomeIcons.heading, title: 'ヘッダーペイント', page: HeadersScreen()),
  _Route(icon: FontAwesomeIcons.circleNotch, title: 'グラデーション', page: CircularProgressScreen()),
  _Route(icon: FontAwesomeIcons.mobile, title: 'スクロールアニメ', page: PinterestScreen()),
  _Route(icon: FontAwesomeIcons.mobile, title: 'スライダー', page: SliderScreen()),
  _Route(icon: FontAwesomeIcons.mobile, title: 'アニメーション1', page: AnimatePageScreen()),
  _Route(icon: FontAwesomeIcons.mobile, title: 'アニメーション2', page: AnimationScreen()),
  _Route(icon: FontAwesomeIcons.peopleCarry, title: 'アニメーション3', page: MoveScreen()),
];




