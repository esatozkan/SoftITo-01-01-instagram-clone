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
            IconButton(
              onPressed: () {
                homeProvider.setPage(0);
              },
              icon: Image.asset(
                'assets/icons/home.png',
                width: 25,
                height: 25,
              ),
            ),
            IconButton(
              onPressed: () {
                homeProvider.setPage(1);
              },
              icon: Image.asset(
                'assets/icons/discovery.png',
                width: 25,
                height: 25,
              ),
            ),
            IconButton(
              onPressed: () {
                homeProvider.setPage(2);
              },
              icon: Image.asset(
                'assets/icons/reels.png',
                width: 25,
                height: 25,
              ),
            ),
            IconButton(
              onPressed: () {
                homeProvider.setPage(3);
              },
              icon: Image.asset(
                'assets/icons/heart.png',
                width: 25,
                height: 25,
              ),
            ),
            IconButton(
              onPressed: () {
                homeProvider.setPage(4);
              },
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  Faker().image.image(keywords: ["people", "selfie", "person"]),
                  width: 27,
                  height: 27,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
