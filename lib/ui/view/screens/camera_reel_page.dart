import '../widgets/camera_app_bar_widget.dart';
import '../widgets/take_picture_widget.dart';
import '../widgets/camera_nav_bar_widget.dart';
import '../widgets/reel_addition_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/background_widget.dart';

class CameraReelPage extends StatefulWidget {
  const CameraReelPage({super.key});

  @override
  State<CameraReelPage> createState() => _CameraReelPageState();
}

class _CameraReelPageState extends State<CameraReelPage> {
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
                height: MediaQuery.of(context).size.height * .124,
              ),
              const ReelAddition(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .21,
              ),
              const TakePicture(
                image: "",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .024,
              ),
              const CameraNavBar()
            ],
          ),
        ],
      ),
    );
  }
}
