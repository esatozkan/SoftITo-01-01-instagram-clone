import 'package:flutter/material.dart';
import 'package:instagram_clone/data/constants/constants.dart';
import 'package:instagram_clone/ui/providers/home_provider.dart';
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
              icon: Image.asset(
                'assets/icons/profile.png',
                width: 25,
                height: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
