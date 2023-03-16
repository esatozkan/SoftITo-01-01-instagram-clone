import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/ui/view/widgets/custom_bottom_nav_bar.dart';
import 'package:instagram_clone/ui/view/widgets/profile_appbar.dart';
import 'package:instagram_clone/ui/view/widgets/profile_tab_bar.dart';
import 'package:instagram_clone/ui/view/widgets/profile_top.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppBar(appBar: AppBar()),
      body: SafeArea(
        child: Column(
          children: [
            ProfileTop(),
            ProfileTabBar(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
