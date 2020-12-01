import 'package:flutter/material.dart';
import 'package:flutter_ui/model/layout_model.dart';
import 'package:flutter_ui/model/theme_changer.dart';
import 'package:flutter_ui/screen/main_ui_screen.dart';
import 'package:flutter_ui/screen/main_ui_tablet_screen.dart';
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
        create: (_) => LayoutModel(),
        child: ChangeNotifierProvider(
          create: (_) => ThemeChanger(0), //1はColors.purple
          child: MyApp(),
        ),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      title: 'Flutter UI',
      theme: themeData.currentTheme,
      home: OrientationBuilder(
        //画面サイズや向きを取得する。
        builder: (BuildContext context, Orientation orientation) {
          final screenSize = MediaQuery.of(context).size;
          if (screenSize.width > 500) {
            return MainUITabletScreen();
          } else {
            return MainUIScreen();
          }
        },
      ),
    );
  }
}
