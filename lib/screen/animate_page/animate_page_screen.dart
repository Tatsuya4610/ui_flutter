import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_ui/screen/animate_page/components/navigation_page.dart';
import 'package:flutter_ui/screen/animate_page/components/twitter_animate_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate_do'),
        actions: <Widget>[
          IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter),
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (BuildContext context) => TwitterAnimatePage(),
                ),
              );
            },
          ),
          SlideInLeft(
            from: 30, // Pxだげ左から移動アニメーション。
            child: IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (BuildContext context) => NavigationPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: BounceInRight( //右画面外からアニメーション。
        child: FloatingActionButton(
          child: FaIcon(FontAwesomeIcons.play),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Appバーのアイコン2種類、ページ移動あり'),
            SizedBox(height: 100,),
            ElasticIn(
              //弾むアニメーション
              child: Icon(
                Icons.new_releases,
                color: Colors.blue,
                size: 40,
              ),
            ),
            FadeInDown(
              //上から降りてくるアニメーション
              delay: Duration(seconds: 1), //降りてくる開始時間
              child: Text(
                '題名',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            FadeInDown(
              child: Text(
                'テキスト文',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            FadeInLeft(
              //右からアニメーション。
              child: Container(
                width: 220,
                height: 2,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
