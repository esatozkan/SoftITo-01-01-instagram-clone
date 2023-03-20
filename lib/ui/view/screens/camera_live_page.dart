import '../widgets/camera_nav_bar_widget.dart';
import '../widgets/live_addition_widget.dart';
import '../widgets/take_picture_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/background_widget.dart';
import '../widgets/text_button_widget.dart';

class CameraLivePage extends StatefulWidget {
  const CameraLivePage({super.key});

  @override
  State<CameraLivePage> createState() => _CameraLivePageState();
}

class _CameraLivePageState extends State<CameraLivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Background(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        textButton("assets/cameraIcons/Vector 74.png", 20),
                        textButton("assets/cameraIcons/Vector 75.png", 20),
                      ],
                    ),
                    textButton("assets/cameraIcons/Vector.png", 25)
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .24,
              ),
              const LiveAddition(),
              SizedBox(
                height: MediaQuery.of(context).size.height * .27,
              ),
              const TakePicture(image: "assets/cameraIcons/Vector (11).png"),
              SizedBox(
                height: MediaQuery.of(context).size.height * .024,
              ),
              const CameraNavBar(
                isWatch: false,
              ),
            ],
          )
        ],
      ),
    );
  }
}
