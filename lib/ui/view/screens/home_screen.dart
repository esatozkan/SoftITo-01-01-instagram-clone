import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/widgets/custom_bottom_nav_bar.dart';
import 'package:instagram_clone/ui/view/widgets/stories.dart';
import 'package:instagram_clone/ui/view/widgets/timeline_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TimelineAppbar(),
      body: Center(
        child: StoriesWidgets(),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
