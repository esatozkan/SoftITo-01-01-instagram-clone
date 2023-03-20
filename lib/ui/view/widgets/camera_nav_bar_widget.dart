import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../screens/camera_live_page.dart';
import '../screens/camera_post_page.dart';
import '../screens/camera_reel_page.dart';
import '../screens/camera_story_page.dart';

class CameraNavBar extends StatefulWidget {
  final bool isWatch;
  const CameraNavBar({
    Key? key,
    this.isWatch = true,
  }) : super(key: key);

  @override
  State<CameraNavBar> createState() => _CameraNavBarState();
}

class _CameraNavBarState extends State<CameraNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.height * .024,
          right: MediaQuery.of(context).size.height * .012),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (widget.isWatch == true)
            Container(
              height: MediaQuery.of(context).size.height * .049,
              width: MediaQuery.of(context).size.height * .043,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * .012),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    Faker().image.image(random: true),
                  ),
                ),
              ),
            ),
          Row(
            children: [
              for (int i = 0; i < texts.length; i++)
                iconButton(texts[i], context)
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * .006),
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.height * .024,
              backgroundColor: Colors.grey[700],
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * .006),
                child: Image.asset(
                  "assets/cameraIcons/camera.png",
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * .037,
                  width: MediaQuery.of(context).size.height * .037,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<String> texts = ["post", "story", "reel", "live"];

  Widget iconButton(String text, context) {
    return TextButton(
      onPressed: () {
        if (text == "post")
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const CameraPostPage()));
        if (text == "story")
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const CameraStoryPage()));
        if (text == "reel")
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const CameraReelPage()));
        if (text == "live")
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const CameraLivePage()));
      },
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * .006),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * .022),
        ),
      ),
    );
  }
}
