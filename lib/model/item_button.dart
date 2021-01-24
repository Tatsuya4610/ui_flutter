import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemButton {
  final IconData icon;
  final String text;
  final Color color1;
  final Color color2;
  ItemButton(
    this.icon,
    this.text,
    this.color1,
    this.color2,
  );
}

final _items = <ItemButton>[
  ItemButton(FontAwesomeIcons.carCrash, 'テキスト1', Colors.deepPurpleAccent,
      Colors.deepPurple),
  ItemButton(FontAwesomeIcons.plus, 'テキスト2', Colors.lightBlueAccent,
      Colors.blueAccent),
  ItemButton(FontAwesomeIcons.theaterMasks, 'テキスト3',
      Colors.orangeAccent, Colors.deepOrange),
  ItemButton(
      FontAwesomeIcons.biking, 'テキスト4', Colors.lightGreenAccent, Colors.green),
  ItemButton(FontAwesomeIcons.carCrash, 'テキスト5', Colors.yellow,
      Colors.yellowAccent),
  ItemButton(FontAwesomeIcons.plus, 'テキスト6', Colors.deepPurpleAccent,
      Colors.deepPurple),
  ItemButton(FontAwesomeIcons.theaterMasks, 'テキスト7',
      Colors.blueAccent, Colors.lightBlueAccent),
  ItemButton(
      FontAwesomeIcons.biking, 'テキスト8', Colors.deepOrange, Colors.orangeAccent),
  ItemButton(FontAwesomeIcons.carCrash, 'テキスト9', Colors.lightGreenAccent,
      Colors.green),
  ItemButton(FontAwesomeIcons.plus, 'テキスト10', Colors.yellowAccent,
      Colors.yellow),
  ItemButton(FontAwesomeIcons.theaterMasks, 'テキスト11',
      Colors.deepPurple, Colors.deepPurpleAccent),
  ItemButton(
      FontAwesomeIcons.biking, 'テキスト12', Colors.blueAccent, Colors.lightBlueAccent),
];

class ButtonItem {
  List<ItemButton> get item {
    return [..._items];
  }
}



