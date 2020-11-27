import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/button_fat.dart';
import 'package:flutter_ui/widgets/icon_header.dart';
import 'package:flutter_ui/model/item_button.dart';

class EmergencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ButtonItem buttonItem = ButtonItem();
    List<ItemButton> items = buttonItem.item;
    List<Widget> itemMap = items
        .map((item) => ButtonFat(
              text: item.text,
              icon: item.icon,
              color1: item.color1,
              color2: item.color2,
              onPress: () {},
            ))
        .toList();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 160),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 90,
                ),
                ...itemMap,
              ],
            ),
          ),
          IconHeader(),
        ],
      ),
    );
  }
}

