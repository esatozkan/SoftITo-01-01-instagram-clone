import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/providers/reels_provider.dart';
import '/data/constants/constants.dart';
import '/ui/providers/post_provider.dart';
import '/ui/view/screens/main_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AppInit extends StatelessWidget {
  const AppInit({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenFunction(
      backgroundColor: bgColor,
      curve: Curves.easeOut,
      splash: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/logo.png'),
      ),
      duration: 2000,
      screenFunction: () async {
        await context.read<PostProvider>().getListData();
        await context.read<ReelsProvider>().getReelsData();
        return const MainScreen();
      },
      pageTransitionType: PageTransitionType.leftToRightWithFade,
    );
  }
}
