import 'package:flutter/material.dart';

class LiveAddition extends StatefulWidget {
  const LiveAddition({super.key});

  @override
  State<LiveAddition> createState() => _LiveAdditionState();
}

class _LiveAdditionState extends State<LiveAddition> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < icons.length; i++)
          addition(icons[i], name[i], MediaQuery.of(context).size.height * .049)
      ],
    );
  }

  List<String> name = ["Title", "Audience", "Schedule"];

  List<String> icons = [
    "assets/cameraIcons/Vector (10).png",
    "assets/cameraIcons/Vector (9).png",
    "assets/cameraIcons/Vector (8).png",
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
