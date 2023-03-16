import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/providers/home_provider.dart';
import 'package:instagram_clone/ui/view/screens/profile_screen.dart';
import 'package:provider/provider.dart';
import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = const [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      ProfileScreen(),
    ];
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      body: pages[homeProvider.getPage],
    );
  }
}
