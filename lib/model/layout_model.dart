import 'package:flutter/material.dart';
import 'package:flutter_ui/screen/slider/slider_screen.dart';

class LayoutModel with ChangeNotifier {

  Widget _currentPage = SliderScreen();

  set currentPage(Widget page) {
    _currentPage = page;
    notifyListeners();
  }

  Widget get currentPage => _currentPage;

}