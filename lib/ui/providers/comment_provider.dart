import 'package:flutter/material.dart';
import '../view/widgets/comment.dart';

class CommentProvider with ChangeNotifier {
  List<Comment> comments = [];
}
