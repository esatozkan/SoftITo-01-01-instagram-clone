import 'package:flutter/material.dart';

class DiscoveryProvider extends ChangeNotifier {
  bool searchView = false;
  bool cancelView = false;

  changeSearchView() async {
    searchView = !searchView;
    if (searchView) {}
    await Future.delayed(Duration(milliseconds: 250));
    cancelView = !cancelView;
    notifyListeners();
  }
}
