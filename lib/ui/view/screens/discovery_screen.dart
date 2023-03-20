import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/providers/discovery_provider.dart';
import 'package:instagram_clone/ui/view/widgets/custom_bottom_nav_bar.dart';
import 'package:instagram_clone/ui/view/widgets/discovery_appbar.dart';
import 'package:provider/provider.dart';
import '../widgets/discovery_grid_widget.dart';
import 'discovery_search_screen.dart';

class DiscoveryScreen extends StatelessWidget {
  const DiscoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DiscoveryAppbar(),
      body: Provider.of<DiscoveryProvider>(context).searchView == false
          ? const DiscoveryGrid()
          : const DiscoverySearchScreen(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
