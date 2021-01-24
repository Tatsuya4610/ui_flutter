import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/slider/components/bottom_button.dart';
import 'package:flutter_ui/screen/slider/components/main_scroll.dart';

class SliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        MainScroll(),
        Positioned(bottom: -10, right: 0, child: BottomButton()),
      ],
    ));
  }
}

