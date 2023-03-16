import 'package:flutter/material.dart';

class DiscoverViewModel extends ChangeNotifier {
  bool searchView = false;
  bool canselView = false;

  changeSearchView() async {
    searchView = !searchView;
    if (searchView) {}
    await Future.delayed(Duration(milliseconds: 250));
    searchView = !searchView;
    notifyListeners();
  }
}
