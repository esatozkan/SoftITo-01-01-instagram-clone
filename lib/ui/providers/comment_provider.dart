import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '/data/entities/Models/comment_model.dart';

class CommentProvider with ChangeNotifier {
  List<CommentModel> comments = [];

  Future getCommentsData() async {
    await Future.delayed(const Duration(milliseconds: 500));
    int count = Faker().randomGenerator.integer(100, min: 30);
    for (var i = 0; i < count; i++) {
      comments.add(CommentModel.fake());
    }
    notifyListeners();
  }
}
