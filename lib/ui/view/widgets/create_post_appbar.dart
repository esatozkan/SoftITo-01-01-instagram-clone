import 'package:flutter/material.dart';

class PostCreateAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PostCreateAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(70);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset("assets/icons/cancel_icon.png"),
      ),
      title: const Text(
        "New Post",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15, bottom: 3),
          child: IconButton(
            icon: Image.asset(
              "assets/icons/next_page_route.png",
              width: 40,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
