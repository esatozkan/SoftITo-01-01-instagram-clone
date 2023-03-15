import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../data/constants/constants.dart';

class StoriesWidgets extends StatefulWidget {
  const StoriesWidgets({super.key});

  @override
  State<StoriesWidgets> createState() => _StoriesWidgetsState();
}

class _StoriesWidgetsState extends State<StoriesWidgets> {
  @override
  Widget build(BuildContext context) {
    bool iswatchMyStory = false;
    return IconButton(
      onPressed: () {},
      icon: CircleAvatar(
        radius: 50,
        backgroundColor: iswatchMyStory == false ? Colors.green : Colors.grey,
        child: CircleAvatar(
            radius: 47,
            backgroundColor: bgColor,
            child: CircleAvatar(
              radius: 42,
              backgroundImage: AssetImage("assets/profilePhoto.jpeg"),
            )),
      ),
    );
  }
}
