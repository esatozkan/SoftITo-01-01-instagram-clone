import 'package:flutter/material.dart';

class ProfileProvider with ChangeNotifier {
  int _tabIndex = 0;
  int get getTabIndex => _tabIndex;

  void setTabIndex(int i) {
    _tabIndex = i;
    notifyListeners();
  }
}
