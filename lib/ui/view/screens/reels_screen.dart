import 'package:flutter/material.dart';
import '/ui/providers/reels_provider.dart';
import '/ui/view/widgets/reels_app_bar.dart';
import '/ui/view/widgets/reels_post.dart';
import 'package:provider/provider.dart';
import '/ui/view/widgets/custom_bottom_nav_bar.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({super.key});

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    ReelsProvider reelsProvider = Provider.of<ReelsProvider>(context);
    return Scaffold(
      appBar: const ReelsAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              scrollDirection: Axis.vertical,
              controller: _pageController,
              children: [
                ...reelsProvider.reels.map((e) => ReelsPost(reel: e)).toList(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
