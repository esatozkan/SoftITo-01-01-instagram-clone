import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  bool searchView = false;
  bool cancelView = false;

  changeSearchView() async {
    searchView = !searchView;
    notifyListeners();
    if (searchView) {
      await Future.delayed(const Duration(milliseconds: 250));
    }
    cancelView = !cancelView;
    notifyListeners();
  }
}
