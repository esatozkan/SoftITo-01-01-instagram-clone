import 'package:flutter/material.dart';
import '/data/repository/story_repository.dart';

class StoryProvider with ChangeNotifier {
  bool isClicked = false;
  bool photoClicked = false;

  bool get getIsClicked => isClicked;
  bool get getPhotoClicked => photoClicked;

  StoryRepository storyRepo = StoryRepository();

  void setIsClicked(bool click) {
    isClicked = storyRepo.setIsClicked(click);
    notifyListeners();
  }

  void setPhotoClicked(bool click) {
    photoClicked = storyRepo.setPhotoClicked(click);
    notifyListeners();
  }
}
