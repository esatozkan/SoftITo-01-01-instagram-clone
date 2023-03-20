import 'package:flutter/material.dart';

class ReelAddition extends StatefulWidget {
  const ReelAddition({super.key});

  @override
  State<ReelAddition> createState() => _ReelAdditionState();
}

class _ReelAdditionState extends State<ReelAddition> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < icons.length; i++)
          addition(icons[i], name[i], MediaQuery.of(context).size.height * .049)
      ],
    );
  }

  List<String> name = [
    "Audio",
    "Effects",
    "Add Yours",
    "Length",
    "Speed",
    "Timer",
  ];

  List<String> icons = [
    "assets/cameraIcons/Vector (2).png",
    "assets/cameraIcons/Vector (3).png",
    "assets/cameraIcons/Vector (6).png",
    "assets/cameraIcons/Vector (5).png",
    "assets/cameraIcons/Vector (4).png",
    "assets/cameraIcons/Vector (7).png",
  ];
  Widget addition(String image, String name, double imageHeight) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * .012,
          left: MediaQuery.of(context).size.height * .012),
      child: Row(
        children: [
          Image.asset(
            image,
            height: imageHeight,
            width: imageHeight,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * .012),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * .021,
              ),
            ),
          )
        ],
      ),
    );
  }
}
