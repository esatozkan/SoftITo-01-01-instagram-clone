import 'package:flutter/material.dart';

class StoryProvider with ChangeNotifier {
  bool isClicked = false;
  bool photoClicked = false;

  bool get getIsClicked => isClicked;
  bool get getPhotoClicked => photoClicked;

  void setIsClicked(bool click) {
    isClicked = click;
    notifyListeners();
  }

  void setPhotoClicked(bool click) {
    photoClicked = click;
    notifyListeners();
  }
}
