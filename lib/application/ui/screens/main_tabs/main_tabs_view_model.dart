import 'package:flutter/material.dart';

class MainTabsViewModel extends ChangeNotifier {
  int _currentTabIndex = 0;

  int get currentTabIndex => _currentTabIndex;

  setCurrentTabIndex(int value) {
    _currentTabIndex = value;
    notifyListeners();
  }
}
