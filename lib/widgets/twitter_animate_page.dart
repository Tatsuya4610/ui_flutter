import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TwitterAnimatePage extends StatefulWidget {
  @override
  _TwitterAnimatePageState createState() => _TwitterAnimatePageState();
}
class _TwitterAnimatePageState extends State<TwitterAnimatePage> {
  bool actionVar = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1DA1F2),
      body: Center(
        child: ZoomOut(
          animate: actionVar,
          from: 30,
          duration: Duration(seconds: 1),
          child: FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        child: FaIcon(FontAwesomeIcons.play),
        onPressed: (){
          setState(() {
            actionVar = true;
          });
        },
      ),
    );
  }
}