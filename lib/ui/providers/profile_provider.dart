import 'package:flutter/material.dart';
import '/data/repository/profile_repository.dart';

class ProfileProvider with ChangeNotifier {
  int _tabIndex = 0;

  int get getTabIndex => _tabIndex;

  ProfileRepository profileRepo = ProfileRepository();

  void setTabIndex(int i) {
    _tabIndex = profileRepo.setTabIndex(i);
    notifyListeners();
  }
}
