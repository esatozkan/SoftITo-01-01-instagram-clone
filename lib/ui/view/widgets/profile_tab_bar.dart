import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/profile_provider.dart';
import '/ui/view/widgets/profile_grid.dart';
import '/ui/view/widgets/profile_tag_grid.dart';

class ProfileTabBar extends StatefulWidget {
  const ProfileTabBar({super.key});

  @override
  State<ProfileTabBar> createState() => _ProfileTabBarState();
}

class _ProfileTabBarState extends State<ProfileTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ProfileProvider profileProvider = Provider.of<ProfileProvider>(context);
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            onTap: (value) {
              profileProvider.setTabIndex(value);
            },
            tabs: [
              Tab(
                icon: Opacity(
                  opacity: profileProvider.getTabIndex == 0 &&
                          _tabController.index == 0
                      ? 1
                      : 0.5,
                  child: Image.asset(
                    'assets/icons/photos.png',
                    width: 28,
                    color: Colors.white,
                  ),
                ),
              ),
              Tab(
                icon: Opacity(
                  opacity: profileProvider.getTabIndex == 1 &&
                          _tabController.index == 1
                      ? 1
                      : 0.5,
                  child: Image.asset(
                    'assets/icons/tags.png',
                    width: 28,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                ProfileGrid(),
                ProfileTagGrid(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
