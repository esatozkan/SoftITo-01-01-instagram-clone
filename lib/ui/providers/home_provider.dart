import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int _page = 0;

  int get getPage => _page;

  void setPage(int p) {
    _page = p;
    notifyListeners();
  }
}
