import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/emergency/components/button_fat.dart';
import 'package:flutter_ui/screen/emergency/components/icon_header.dart';
import 'package:flutter_ui/model/item_button.dart';

class EmergencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isLarge;
    if (MediaQuery.of(context).size.height > 500) { //デバイス大きさ(ipad別)でUI変化。
      isLarge = true;
    } else {
      isLarge = false;
    }
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
            margin: EdgeInsets.only(top: (isLarge) ? 160 : 80),
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

