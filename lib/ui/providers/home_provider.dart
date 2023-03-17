import 'package:flutter/material.dart';
import '/data/repository/home_repository.dart';

class HomeProvider extends ChangeNotifier {
  int _page = 0;

  int get getPage => _page;

  HomeRepository homeRepo = HomeRepository();

  void setPage(int p) {
    _page = homeRepo.setPage(p);
    notifyListeners();
  }
}
