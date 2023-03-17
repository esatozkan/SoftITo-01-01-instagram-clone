import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/widgets/grid_post.dart';

class ProfileTagGrid extends StatelessWidget {
  const ProfileTagGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: const <Widget>[
        GridPost(),
        GridPost(),
        GridPost(),
        GridPost(),
        GridPost(),
        GridPost(),
      ],
    );
  }
}
