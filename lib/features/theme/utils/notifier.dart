import 'package:flutter/material.dart';

class SelectedThemeNotifier extends ChangeNotifier {
  SelectedThemeNotifier({int initialIndex = 0})
      : _index = initialIndex,
        assert(initialIndex >= 0);

  int get index => _index;
  int _index;

  set index(int value) {
    if (_index == value) {
      return;
    }
    _index = value;
    notifyListeners();
  }

  jumpToTab(int value) {
    if (_index == value) {
      return;
    }
    _index = value;
    notifyListeners();
  }
}
