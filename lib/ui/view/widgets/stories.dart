import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/ui/providers/story_provider.dart';
import 'package:instagram_clone/ui/view/screens/home_screen.dart';
import 'package:instagram_clone/ui/view/screens/story_screen.dart';
import 'package:provider/provider.dart';

import '../../../data/constants/constants.dart';

class StoriesWidgets extends StatefulWidget {
  const StoriesWidgets({super.key});

  @override
  State<StoriesWidgets> createState() => _StoriesWidgetsState();
}

class _StoriesWidgetsState extends State<StoriesWidgets> {
  @override
  Widget build(BuildContext context) {
    return Story("assets/profilePhoto.jpeg", "Your story", Colors.green);
  }

  Widget Story(String image, String name, Color color) {
    StoryProvider storyProvider = Provider.of<StoryProvider>(context);
    if (storyProvider.isClicked == true) {
      return StoryScreen();
    } else {
      return TextButton(
        onPressed: () {
          storyProvider.setIsClicked(true);
          storyProvider.setPhotoClicked(true);
        },
        child: Column(
          children: [
            CircleAvatar(
              radius: 42,
              backgroundColor:
                  storyProvider.getPhotoClicked == false ? color : Colors.grey,
              child: CircleAvatar(
                  radius: 39,
                  backgroundColor: bgColor,
                  child: CircleAvatar(
                    radius: 34,
                    backgroundImage: AssetImage(image),
                  )),
            ),
            Text(
              name,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      );
    }
  }
}
