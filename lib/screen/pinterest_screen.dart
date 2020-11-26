import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/pinterest_grid.dart';
import 'package:flutter_ui/model/menu_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ui/widgets/pinterest_menu_location.dart';

class PinterestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MenuModel()),
        ChangeNotifierProvider(create: (_) => ToShow()),
      ],
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            PinterestGrid(),
            PinterestMenuLocation(),
          ],
        ),
      ),
    );
  }
}






