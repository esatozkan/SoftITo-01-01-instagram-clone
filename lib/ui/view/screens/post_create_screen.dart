import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/ui/view/widgets/create_post_appbar.dart';

import '../widgets/create_post_camera.dart';
import '../widgets/create_post_gallery.dart';

class CreatePostScreen extends StatelessWidget{
  const CreatePostScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PostCreateAppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              PostCreateCamera(),
            ],
            ),
          ),
          PostCreateGallery(),
        ],
      ),
    );
  }
}