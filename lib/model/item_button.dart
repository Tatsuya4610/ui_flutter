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
  ItemButton(FontAwesomeIcons.carCrash, 'テキスト1', Color(0xff6989F5),
      Color(0xff906EF5)),
  ItemButton(FontAwesomeIcons.plus, 'テキスト2', Color(0xff66A9F2),
      Color(0xff536CF6)),
  ItemButton(FontAwesomeIcons.theaterMasks, 'テキスト3',
      Color(0xffF2D572), Color(0xffE06AA3)),
  ItemButton(
      FontAwesomeIcons.biking, 'テキスト4', Color(0xff317183), Color(0xff46997D)),
  ItemButton(FontAwesomeIcons.carCrash, 'テキスト5', Color(0xff6989F5),
      Color(0xff906EF5)),
  ItemButton(FontAwesomeIcons.plus, 'テキスト6', Color(0xff66A9F2),
      Color(0xff536CF6)),
  ItemButton(FontAwesomeIcons.theaterMasks, 'テキスト7',
      Color(0xffF2D572), Color(0xffE06AA3)),
  ItemButton(
      FontAwesomeIcons.biking, 'テキスト8', Color(0xff317183), Color(0xff46997D)),
  ItemButton(FontAwesomeIcons.carCrash, 'テキスト9', Color(0xff6989F5),
      Color(0xff906EF5)),
  ItemButton(FontAwesomeIcons.plus, 'テキスト10', Color(0xff66A9F2),
      Color(0xff536CF6)),
  ItemButton(FontAwesomeIcons.theaterMasks, 'テキスト11',
      Color(0xffF2D572), Color(0xffE06AA3)),
  ItemButton(
      FontAwesomeIcons.biking, 'テキスト12', Color(0xff317183), Color(0xff46997D)),
];

class ButtonItem {
  List<ItemButton> get item {
    return [..._items];
  }
}



