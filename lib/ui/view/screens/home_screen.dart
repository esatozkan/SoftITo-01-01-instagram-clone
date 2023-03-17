import 'package:flutter/material.dart';
import 'package:instagram_clone/data/entities/Models/post_model.dart';
import 'package:instagram_clone/ui/providers/post_provider.dart';
import 'package:instagram_clone/ui/view/screens/profile_screen.dart';
import 'package:instagram_clone/ui/view/widgets/custom_bottom_nav_bar.dart';
import 'package:instagram_clone/ui/view/widgets/stories.dart';
import 'package:instagram_clone/ui/view/widgets/timeline_appbar.dart';
import 'package:instagram_clone/ui/view/widgets/timeline_post.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      ProfileScreen(),
    ];

    PostProvider postProvider = Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: TimelineAppbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 115,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) => Stories(
                    color: index == 0 ? Colors.green : Colors.yellow,
                    image: "assets/profilePhoto.jpeg",
                    name: "Your Story"),
              ),
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ...postProvider.posts
                      .map((e) => TimelinePosts(post: e))
                      .toList(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
