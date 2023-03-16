import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/providers/post_provider.dart';
import 'package:instagram_clone/ui/view/widgets/custom_bottom_nav_bar.dart';
import 'package:instagram_clone/ui/view/widgets/stories.dart';
import 'package:instagram_clone/ui/view/widgets/timeline_appbar.dart';
import 'package:instagram_clone/ui/view/widgets/timeline_post.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider = Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: const TimelineAppbar(),
      body: Column(
        children: [
          const StoriesWidgets(),
          Expanded(
              child: ListView(
            children: [
              ...postProvider.posts.map((e) => TimelinePosts(post: e)).toList(),
            ],
          ))
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
