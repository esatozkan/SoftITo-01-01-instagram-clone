import 'package:faker/faker.dart';
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
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
