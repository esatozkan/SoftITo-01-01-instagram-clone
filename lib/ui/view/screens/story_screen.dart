import 'package:flutter/material.dart';

import 'package:instagram_clone/ui/providers/story_provider.dart';
import 'package:instagram_clone/ui/view/screens/home_screen.dart';
import 'package:provider/provider.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    StoryProvider storyProvider = Provider.of<StoryProvider>(context);
    return GestureDetector(
      onTap: () {
        storyProvider.setIsClicked(false);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 00,
          ),
          Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(color: Colors.white),
          )
        ],
      ),
    );
  }
}
