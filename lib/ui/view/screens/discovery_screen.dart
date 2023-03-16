import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/widgets/custom_bottom_nav_bar.dart';
import 'package:instagram_clone/ui/view/widgets/discovery_appbar.dart';
import 'package:instagram_clone/ui/view/widgets/timeline_appbar.dart';

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DiscoveryAppbar(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
