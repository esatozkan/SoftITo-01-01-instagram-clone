import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/data/constants/contans.dart';

class StoriesWidgets extends StatelessWidget {
  const StoriesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    bool iswatchMyStory = false;
    return CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey,
      child: CircleAvatar(
          radius: 47,
          backgroundColor: bgColor,
          child: CircleAvatar(
            radius: 42,
            backgroundImage: AssetImage("assets/profilePhoto.jpeg"),
          )),
    );
  }
}
