import 'package:flutter/material.dart';

import '/ui/providers/story_provider.dart';
import '/ui/view/screens/home_screen.dart';
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
          const SizedBox(
            height: 00,
          ),
          Container(
            width: 500,
            height: 500,
            decoration: const BoxDecoration(color: Colors.white),
          )
        ],
      ),
    );
  }
}
