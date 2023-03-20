import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/screens/camera_story_page.dart';
import '/ui/view/screens/chat_screen.dart';
import '/ui/providers/post_provider.dart';
import '/ui/view/widgets/custom_bottom_nav_bar.dart';
import '/ui/view/widgets/stories.dart';
import '/ui/view/widgets/timeline_appbar.dart';
import '/ui/view/widgets/timeline_post.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider = Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: const TimelineAppbar(),
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
                    image: Faker().image.image(
                        random: true,
                        keywords: ["person"],
                        width: 68,
                        height: 68),
                    name: Faker().person.firstName()),
              ),
            ),
            Flexible(
              child: GestureDetector(
                onPanUpdate: (details) {
                  // Swiping in right direction.
                  if (details.delta.dx > 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CameraStoryPage()));
                  }

                  // Swiping in left direction.
                  if (details.delta.dx < 0) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatScreen()));
                  }
                },
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ...postProvider.posts
                        .map((e) => TimelinePosts(post: e))
                        .toList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
