import 'package:flutter/material.dart';
import '/ui/view/widgets/create_post_appbar.dart';
import '/ui/view/widgets/custom_bottom_nav_bar.dart';

import '../widgets/create_post_camera.dart';
import '../widgets/create_post_gallery.dart';

class CreatePostScreen extends StatelessWidget {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PostCreateAppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: const [
                PostCreateCamera(),
              ],
            ),
          ),
          const PostCreateGallery(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
