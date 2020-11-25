import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class CircularProgressScreen extends StatefulWidget {
  @override
  _CircularProgressScreenState createState() => _CircularProgressScreenState();
}

class _CircularProgressScreenState extends State<CircularProgressScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double percentage = 0.0;
  double newPercentage = 0.0;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 3));
    _controller.addListener(() {
      setState(() {
        percentage = lerpDouble(percentage, newPercentage, _controller.value);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          percentage = newPercentage;
          newPercentage += 10;
          if (newPercentage > 100) {
            newPercentage = 0;
            percentage = 0;
          }
          _controller.forward(from: 0.0); //from0.0でボタンを押すたびに初期になる。
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          width: 300,
          height: 300,
          // color: Colors.blue,
          child: CustomPaint(
            painter: _CircleProgress(percentage: percentage),
          ),
        ),
      ),
    );
  }
}

class _CircleProgress extends CustomPainter {
  final percentage;
  _CircleProgress({this.percentage});

  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = Rect.fromCircle(
      center: Offset(0,0),
      radius: 180,
    );

    final Gradient gradient = LinearGradient(
      colors: <Color>[
        Color(0xffc012FF),
        Color(0xff6D05E8),
        Colors.red,
      ]
    );


    //円のペイント。
    final paint = Paint()
      ..strokeWidth = 4
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;
    final center = Offset(size.width * 0.5, size.height / 2); //円の中心地指定。
    final radius =
        min(size.width * 0.5, size.height * 0.5); //円の大きさ。widthとheightは同じ。
    canvas.drawCircle(center, radius, paint);

    final paintArc = Paint()
      ..strokeWidth = 10
      // ..color = Colors.pink
    ..shader = gradient.createShader(rect)
      ..strokeCap   = StrokeCap.round //線の先端が丸く柔らかい。
      ..style = PaintingStyle.stroke;
    //充填％
    double arcAngle = 2 * pi * (percentage / 100);
    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius), //上記の円と同じ位置と大きさ。
        -pi / 2, //開始角度。
        arcAngle, //充填％。
        false, //useCenter
        paintArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
