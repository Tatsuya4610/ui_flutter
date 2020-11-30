import 'package:flutter/cupertino.dart';

class MenuModel with ChangeNotifier {
  int _itemSelection = 0;
  int get itemSelection => _itemSelection;

  set itemSelections(int index) {
    _itemSelection = index;
    notifyListeners();
  }

}

class ToShow with ChangeNotifier {
  bool _toShow = true;

  bool get toShow => _toShow;

  set toShows(bool show) {
    _toShow = show;
    notifyListeners();
  }
}