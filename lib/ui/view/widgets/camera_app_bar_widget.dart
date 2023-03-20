import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/widgets/text_button_widget.dart';

class CameraAppBar extends StatefulWidget {
  const CameraAppBar({super.key});

  @override
  State<CameraAppBar> createState() => _CameraAppBarState();
}

class _CameraAppBarState extends State<CameraAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * .03),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              print(1);
              Navigator.pop(context);
            },
            icon: Stack(
              children: [
                textButton("assets/cameraIcons/Vector 74.png",
                    MediaQuery.of(context).size.height * .024),
                textButton("assets/cameraIcons/Vector 75.png",
                    MediaQuery.of(context).size.height * .024),
              ],
            ),
          ),
          Stack(
            children: [
              textButton("assets/cameraIcons/Vector 60.png",
                  MediaQuery.of(context).size.height * .018),
              textButton("assets/cameraIcons/Vector 75.png",
                  MediaQuery.of(context).size.height * .024),
            ],
          ),
          textButton("assets/cameraIcons/Vector.png",
              MediaQuery.of(context).size.height * .031)
        ],
      ),
    );
  }
}
