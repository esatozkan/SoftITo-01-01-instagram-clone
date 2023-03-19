import 'package:flutter/material.dart';
import '../widgets/target_profile_appbar.dart';
import '../widgets/target_profile_top.dart';
import '/data/entities/Models/post_model.dart';
import '/ui/view/widgets/custom_bottom_nav_bar.dart';
import '/ui/view/widgets/profile_tab_bar.dart';

class TargetProfileScreen extends StatelessWidget {
  final PostModel post;
  const TargetProfileScreen({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    // ProfileProvider profileProvider = Provider.of<ProfileProvider>(context);
    return Scaffold(
      appBar: TargetProfileAppBar(
        appBar: AppBar(),
        post: post,
      ),
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx > 0) {
            Navigator.pop(context);
          }
        },
        child: SafeArea(
          child: Column(
            children: [
              TargetProfileTop(
                post: post,
              ),
              const ProfileTabBar(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
