import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IconHeaderBackground(),
        Positioned(
          top: -50,
          left: -60,
          child: FaIcon(FontAwesomeIcons.plus,
              size: 200, color: Colors.white.withOpacity(0.2)),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 80,
              width: double.infinity,
            ),
            Text(
              'スクロールデモ',
              style:
                  TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.7)),
            ),
            SizedBox(height: 20,),
            FaIcon(FontAwesomeIcons.plus,size: 50,color: Colors.white.withOpacity(0.7),)
          ],
        )
      ],
    );
  }
}

class IconHeaderBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80),
          ),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff526BF6),
                Color(0xff67ACF2),
              ])),
    );
  }
}
