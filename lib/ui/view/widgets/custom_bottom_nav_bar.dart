import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '/data/constants/constants.dart';
import '/ui/providers/home_provider.dart';
import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return BottomAppBar(
      color: bgColor,
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Opacity(
              opacity: homeProvider.getPage == 0 ? 1 : 0.5,
              child: IconButton(
                onPressed: () {
                  homeProvider.setPage(0);
                },
                icon: Image.asset(
                  'assets/icons/home.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
            Opacity(
              opacity: homeProvider.getPage == 1 ? 1 : 0.5,
              child: IconButton(
                onPressed: () {
                  homeProvider.setPage(1);
                },
                icon: Image.asset(
                  'assets/icons/discovery.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
            Opacity(
              opacity: homeProvider.getPage == 2 ? 1 : 0.5,
              child: IconButton(
                onPressed: () {
                  homeProvider.setPage(2);
                },
                icon: Image.asset(
                  'assets/icons/story.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
            Opacity(
              opacity: homeProvider.getPage == 3 ? 1 : 0.5,
              child: IconButton(
                onPressed: () {
                  homeProvider.setPage(3);
                },
                icon: Image.asset(
                  'assets/icons/reels.png',
                  width: 25,
                  height: 25,
                ),
              ),
            ),
            Opacity(
              opacity: 1,
              child: IconButton(
                onPressed: () {
                  homeProvider.setPage(4);
                },
                icon: CircleAvatar(
                  radius: 19,
                  backgroundColor: Colors.green,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: bgColor,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        Faker()
                            .image
                            .image(keywords: ["people", "selfie", "person"]),
                        width: 27,
                        height: 27,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
