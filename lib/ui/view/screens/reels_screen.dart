import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/ui/view/widgets/custom_bottom_nav_bar.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
