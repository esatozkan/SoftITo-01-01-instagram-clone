import 'package:flutter/material.dart';

class CameraPageViewModel extends ChangeNotifier {
  int page = 0;

  int get getPage => page;

  setPage(int p) {
    page = p;
    notifyListeners();
  }
}
