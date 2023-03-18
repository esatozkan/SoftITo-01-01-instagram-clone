import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '/data/entities/Models/reels_model.dart';

class ReelsProvider with ChangeNotifier {
  List<ReelsModel> reels = [];

  Future getReelsData() async {
    await Future.delayed(const Duration(milliseconds: 500));
    int count = Faker().randomGenerator.integer(100, min: 30);
    for (var i = 0; i < count; i++) {
      reels.add(ReelsModel.fake());
    }
    notifyListeners();
  }
}
