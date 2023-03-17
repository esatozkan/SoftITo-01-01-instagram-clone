import 'package:flutter/material.dart';

import 'package:instagram_clone/ui/view/screens/reels_screen.dart';
import '/ui/providers/home_provider.dart';
import '/ui/view/screens/profile_screen.dart';
import 'package:provider/provider.dart';
import 'discovery_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      HomeScreen(),
      DiscoveryScreen(),
      HomeScreen(),
      ReelsScreen(),
      ProfileScreen(),
    ];
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      body: pages[homeProvider.getPage],
    );
  }
}
