import 'package:flutter/material.dart';

class Move extends StatefulWidget {
  @override
  _MoveState createState() => _MoveState();
}

class _MoveState extends State<Move> with SingleTickerProviderStateMixin {
  AnimationController controller;

  Animation<double> moveRight;
  Animation<double> moveLeft;
  Animation<double> moveUp;
  Animation<double> moveDown;


  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    moveRight = Tween(begin: 0.0, end: 100.0).animate(
      CurvedAnimation(parent: controller,curve: Interval(0, 0.25,curve: Curves.bounceOut)),
    );
    moveUp = Tween(begin: 0.0, end: -100.0).animate(
      CurvedAnimation(parent: controller,curve: Interval(0.25, 0.5,curve: Curves.bounceOut)),
    );
    moveLeft= Tween(begin: 0.0, end: -100.0).animate(
      CurvedAnimation(parent: controller,curve: Interval(0.5, 0.75,curve: Curves.bounceOut)),
    );
    moveDown = Tween(begin: 0.0, end: 100.0).animate(
      CurvedAnimation(parent: controller,curve: Interval(0.75, 1.0,curve: Curves.bounceOut)),
    );
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget child) {
          return Transform.translate(
            offset: Offset(moveRight.value + moveLeft.value, moveUp.value + moveDown.value,),
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }
}

