import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '';

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
  ItemButton(FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5),
      Color(0xff906EF5)),
  ItemButton(FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2),
      Color(0xff536CF6)),
  ItemButton(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
      Color(0xffF2D572), Color(0xffE06AA3)),
  ItemButton(
      FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D)),
  ItemButton(FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5),
      Color(0xff906EF5)),
  ItemButton(FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2),
      Color(0xff536CF6)),
  ItemButton(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
      Color(0xffF2D572), Color(0xffE06AA3)),
  ItemButton(
      FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D)),
  ItemButton(FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5),
      Color(0xff906EF5)),
  ItemButton(FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2),
      Color(0xff536CF6)),
  ItemButton(FontAwesomeIcons.theaterMasks, 'Theft / Harrasement',
      Color(0xffF2D572), Color(0xffE06AA3)),
  ItemButton(
      FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D)),
];

class ButtonItem {
  List<ItemButton> get item {
    return [..._items];
  }
}



