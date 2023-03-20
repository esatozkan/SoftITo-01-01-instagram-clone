import '../widgets/background_widget.dart';
import '../widgets/camera_app_bar_widget.dart';
import '../widgets/story_addition_widget.dart';
import '../widgets/take_picture_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/camera_nav_bar_widget.dart';

class CameraStoryPage extends StatefulWidget {
  const CameraStoryPage({super.key});

  @override
  State<CameraStoryPage> createState() => _CameraStoryPageState();
}

class _CameraStoryPageState extends State<CameraStoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Background(),
          Column(
            children: [
              const CameraAppBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .24,
              ),
              Row(
                children: const [
                  StoryAddition(),
                  Spacer(),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .18,
              ),
              const TakePicture(
                image: '',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .06,
              ),
              const CameraNavBar()
            ],
          )
        ],
      ),
    );
  }
}
