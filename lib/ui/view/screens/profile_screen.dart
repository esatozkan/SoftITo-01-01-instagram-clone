import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/providers/profile_provider.dart';
import 'package:instagram_clone/ui/view/widgets/profile_tag_grid.dart';
import 'package:provider/provider.dart';
import '/ui/view/widgets/custom_bottom_nav_bar.dart';
import '/ui/view/widgets/profile_appbar.dart';
import '/ui/view/widgets/profile_grid.dart';
import '/ui/view/widgets/profile_tab_bar.dart';
import '/ui/view/widgets/profile_top.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ProfileProvider profileProvider = Provider.of<ProfileProvider>(context);
    return Scaffold(
      appBar: ProfileAppBar(appBar: AppBar()),
      body: SafeArea(
        child: Column(
          children: const [
            ProfileTop(),
            ProfileTabBar(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
