import 'package:flutter/material.dart';
import 'package:flutter_ui/model/menu_model.dart';
import 'package:provider/provider.dart';

class PinterestButton {
  final Function onPressed;
  final IconData icon;
  PinterestButton({
    this.onPressed,
    this.icon,
  });
}

class PinterestMenu extends StatelessWidget {
  final List<PinterestButton> items;
  PinterestMenu({this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _MenuItems(items),
      width: 250,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              // offset: Offset(10,10),
              blurRadius: 20, //ぼやけ。
              spreadRadius: -5, //輪郭。
            )
          ]),
    );
  }
}

class _MenuItems extends StatelessWidget {
  final List<PinterestButton> menuItems;
  _MenuItems(this.menuItems);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
          menuItems.length,
          (index) => _PinterestButton(
                items: menuItems[index],
                index: index,
              )),
    );
  }
}

class _PinterestButton extends StatelessWidget {
  final PinterestButton items;
  final int index;
  _PinterestButton({this.items, this.index});
  @override
  Widget build(BuildContext context) {
    final itemSelection = Provider.of<MenuModel>(context).itemSelection;
    return GestureDetector(
      onTap: () {
        Provider.of<MenuModel>(context, listen: false).itemSelections =
            index; //MenuModelへ選択番号を記録。
        items.onPressed();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        child: Icon(
          items.icon,
          size: (itemSelection == index) ? 30 : 25,
          color: (itemSelection == index) ? Colors.black : Colors.blueGrey,
        ),
      ),
    );
  }
}
