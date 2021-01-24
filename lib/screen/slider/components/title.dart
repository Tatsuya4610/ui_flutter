import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Text(
            'NEW',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Stack(
          children: <Widget>[
            SizedBox(
              width: 100,
            ),
            Container(
              child: Text(
                'List',
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
            Positioned(
              bottom: 3,
              child: Container(
                width: 150,
                height: 8,
                color: Colors.amberAccent,
              ),
            )
          ],
        )
      ],
    );
  }
}