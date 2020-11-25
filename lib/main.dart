import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/circular_progress_screen.dart';
import 'package:flutter_ui/screen/slideshow_screen.dart';



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
      home: SlideShowScreen(),
    );
  }
}
