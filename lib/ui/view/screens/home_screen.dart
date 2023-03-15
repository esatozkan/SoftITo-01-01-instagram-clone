import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/widgets/custom_bottom_nav_bar.dart';
import 'package:instagram_clone/ui/view/widgets/stories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(
        child: StoriesWidgets(),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
