import 'package:flutter/material.dart';

class SliderModel with ChangeNotifier {
  double _currentPage = 0;
  // Color _primaryColor = Colors.blue;
  double get currentPage => this._currentPage;


  set currentPages(double currentPage) {
    this._currentPage = currentPage;
    notifyListeners();
  }

  // Color get primaryColor => this._primaryColor;
  // set primaryColor(Color color) {
  //   this._primaryColor = color;
  //   notifyListeners();
  // }
}
