import 'package:instagram_clone/ui/view/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';

class StoryAddition extends StatelessWidget {
  const StoryAddition({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        textButton("assets/cameraIcons/Aa.png",
            MediaQuery.of(context).size.height * .031),
        textButton("assets/cameraIcons/Vector (1).png",
            MediaQuery.of(context).size.height * .031),
        Stack(
          children: [
            textButton("assets/cameraIcons/Rectangle 108.png",
                MediaQuery.of(context).size.height * .031),
            Positioned(
                top: -3,
                child: textButton("assets/cameraIcons/Vector 76.png",
                    MediaQuery.of(context).size.height * .002)),
            Positioned(
                right: -(MediaQuery.of(context).size.height * .004),
                top: -(MediaQuery.of(context).size.height * .03),
                child: textButton("assets/cameraIcons/Vector 77.png",
                    MediaQuery.of(context).size.height * .004)),
          ],
        ),
        textButton("assets/cameraIcons/Vector 78.png",
            MediaQuery.of(context).size.height * .031),
      ],
    );
  }
}
