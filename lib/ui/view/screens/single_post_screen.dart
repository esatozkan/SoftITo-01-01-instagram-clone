import 'package:flutter/material.dart';
import '/data/entities/Models/post_model.dart';
import '/ui/view/widgets/timeline_post.dart';

class SinglePostScreen extends StatelessWidget {
  const SinglePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PostModel post = PostModel.fake();
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx > 0) {
            Navigator.pop(context);
          }
        },
        child: TimelinePosts(post: post),
      ),
    );
  }
}
