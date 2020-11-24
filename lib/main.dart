import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/animation_screen.dart';
import 'package:flutter_ui/screen/headers_screen.dart';
import 'package:flutter_ui/screen/move_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
