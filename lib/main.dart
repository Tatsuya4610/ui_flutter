import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/circular_progress_screen.dart';
import 'package:flutter_ui/screen/emergency_screen.dart';
import 'package:flutter_ui/screen/headers_screen.dart';
import 'package:flutter_ui/screen/move_screen.dart';
import 'package:flutter_ui/screen/pinterest_screen.dart';
import 'package:flutter_ui/screen/slider_screen.dart';
import 'package:flutter_ui/screen/slideshow_screen.dart';
import 'screen/animation_screen.dart';
import 'screen/circular_progress_screen.dart';


//homeにScreen入れ替えてください。
//AnimationScreen・・アニメーションの回転移動など。
//MoveScreen・・アニメーション。CurvedAnimation。
//CircularProgressScreen・・主にCustomPaintの使用。グラデーションやPaint。
//HeadersScreen・・X,Y座標を使ったペイント。曲線のペイント。
//SlidesShowScreen・・画面の切替。
//PinterestScreen・・StaggeredGridView使用。画面のバーボタンをスクロールの上下で表示非表示。アニメーション使用。
//EmergencyScreen・・一般リスト。
//SliderScreen ・・CustomScrollViewの使用。



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SliderScreen(),
    );
  }
}
