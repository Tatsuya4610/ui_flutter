import 'package:flutter/material.dart';
import 'package:flutter_ui/model/theme_changer.dart';
import 'package:flutter_ui/screen/animation_main_screen.dart';
import 'package:provider/provider.dart';

//AnimationScreen・・アニメーションの回転移動など。
//MoveScreen・・アニメーション。CurvedAnimation。
//CircularProgressScreen・・主にCustomPaintの使用。グラデーションやPaint。
//HeadersScreen・・X,Y座標を使ったペイント。曲線のペイント。
//SlidesShowScreen・・画面の切替。
//PinterestScreen・・StaggeredGridView使用。画面のバーボタンをスクロールの上下で表示非表示。アニメーション使用。
//EmergencyScreen・・一般リスト。
//SliderScreen ・・CustomScrollViewの使用。
//AnimatePageScreen・・Animate_doパッケージ使用。

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => ThemeChanger(0),//1はColors.purple
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData.currentTheme,
      home: AnimationMainScreen(),
    );
  }
}
