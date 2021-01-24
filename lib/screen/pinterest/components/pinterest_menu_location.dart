import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/pinterest/components/pinterest_menu.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ui/model/menu_model.dart';

class PinterestMenuLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final toShow = Provider.of<ToShow>(context).toShow;
    bool isLarge;
    if (MediaQuery.of(context).size.height > 500) {
      isLarge = true;
    } else {
      isLarge = false;
    }
    return Positioned(
      bottom: 30,
      left: (isLarge) ? null : -140,
      child: Container(
        width: width,
        child: Align(
          alignment: Alignment.center,
          child: AnimatedOpacity(
            opacity: (toShow) ? 1 : 0,
            duration: Duration(milliseconds: 250),
            child: PinterestMenu(
              items: [
                PinterestButton(
                  icon: Icons.pie_chart,
                  onPressed: () {},
                ),
                PinterestButton(
                  icon: Icons.search,
                  onPressed: () {},
                ),
                PinterestButton(
                  icon: Icons.notifications,
                  onPressed: () {},
                ),
                PinterestButton(
                  icon: Icons.supervised_user_circle,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}