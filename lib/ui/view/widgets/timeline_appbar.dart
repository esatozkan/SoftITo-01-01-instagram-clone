import 'package:flutter/material.dart';
import 'custom_icon_button.dart';

class TimelineAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TimelineAppbar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(56);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.only(
          top: 25,
        ),
        child: Image.asset(
          "assets/icons/instagram.png",
          height: 30,
          fit: BoxFit.fitHeight,
        ),
      ),
      actions: [
        CustomIconButton(
          icon: 'assets/icons/heart.png',
          onPressed: () {},
        ),
        CustomIconButton(
            icon: "assets/icons/direct_messaging.png", onPressed: () {}),
      ],
    );
  }
}
