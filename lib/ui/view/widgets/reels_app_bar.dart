import 'package:flutter/material.dart';

class ReelsAppBar extends StatelessWidget with PreferredSizeWidget {
  const ReelsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: const Text(
        'Reels',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      actions: [
        Image.asset(
          'assets/icons/reels_camera.png',
          width: 30,
          height: 30,
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
