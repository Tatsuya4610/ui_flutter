import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/circular_progress_screen.dart';
import 'package:flutter_ui/screen/headers_screen.dart';
import 'package:flutter_ui/screen/move_screen.dart';
import 'package:flutter_ui/screen/slideshow_screen.dart';
import 'screen/animation_screen.dart';
import 'screen/circular_progress_screen.dart';


//homeにScreen入れ替えてください。
//AnimationScreen・・アニメーションの回転移動など。
//MoveScreen・・アニメーション。CurvedAnimation。
//CircularProgressScreen・・主にCustomPaintの使用。グラデーションやPaint。
//HeadersScreen・・X,Y座標を使ったペイント。曲線のペイント。
//SlidesShowScreen・・画面の切替。



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
      home: MoveScreen(),
    );
  }
}
