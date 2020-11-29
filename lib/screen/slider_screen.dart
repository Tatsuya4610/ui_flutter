import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/bottom_button.dart';
import 'package:flutter_ui/widgets/main_scroll.dart';

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

