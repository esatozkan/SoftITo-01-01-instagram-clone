import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/constants/constants.dart';
import '../../providers/story_provider.dart';

class Stories extends StatefulWidget {
  const Stories(
      {super.key,
      required this.color,
      required this.image,
      required this.name});
  final Color color;
  final String image;
  final String name;

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    StoryProvider storyProvider = Provider.of<StoryProvider>(context);
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8, top: 4),
        child: Column(
          children: [
            CircleAvatar(
              radius: 42,
              backgroundColor: storyProvider.getPhotoClicked == false
                  ? widget.color
                  : Colors.grey,
              child: CircleAvatar(
                  radius: 39,
                  backgroundColor: bgColor,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundImage: AssetImage(widget.image),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                widget.name,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
