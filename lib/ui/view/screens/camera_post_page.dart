import '../widgets/camera_nav_bar_widget.dart';
import '../widgets/story_addition_widget.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class CameraPostPage extends StatefulWidget {
  const CameraPostPage({super.key});

  @override
  State<CameraPostPage> createState() => _CameraPostPageState();
}

class _CameraPostPageState extends State<CameraPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(
          Icons.close,
          color: Colors.white,
          size: MediaQuery.of(context).size.height * .049,
        ),
        centerTitle: true,
        title: const Text(
          "New post",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.height * .018),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: MediaQuery.of(context).size.height * .024),
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Image.asset(
                  "assets/cameraIcons/resim.jpeg",
                  height: MediaQuery.of(context).size.height * .5,
                  width: MediaQuery.of(context).size.width * .75,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.height * .049,
                  child: const StoryAddition()),
              Positioned(
                left: MediaQuery.of(context).size.height * .0186,
                top: MediaQuery.of(context).size.height * .434,
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.height * .02,
                  backgroundColor: Colors.grey[900],
                  child: Stack(
                    children: [
                      Positioned(
                        top: MediaQuery.of(context).size.height * .02,
                        left: MediaQuery.of(context).size.height * .008,
                        child: Image.asset(
                          "assets/cameraIcons/Vector 81.png",
                          width: MediaQuery.of(context).size.height * .012,
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.height * .02,
                        top: MediaQuery.of(context).size.height * .008,
                        child: Image.asset(
                          "assets/cameraIcons/Vector 82.png",
                          width: MediaQuery.of(context).size.height * .012,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .024),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * .024),
                  child: Row(
                    children: [
                      Text(
                        "Recents",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height * .018,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.height * .006,
                            top: MediaQuery.of(context).size.height * .006),
                        child: Image.asset(
                          "assets/cameraIcons/Vector 78.png",
                          width: MediaQuery.of(context).size.height * .012,
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.height * .012),
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.height * .012,
                        vertical: MediaQuery.of(context).size.height * .006),
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height * .024)),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              "assets/cameraIcons/Rectangle 114.png",
                              width: MediaQuery.of(context).size.height * .024,
                            ),
                            Positioned(
                              bottom:
                                  -(MediaQuery.of(context).size.height * 006),
                              left: MediaQuery.of(context).size.height * .006,
                              child: Image.asset(
                                "assets/cameraIcons/Rectangle 114.png",
                                width:
                                    MediaQuery.of(context).size.height * .024,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height * .012),
                          child: Text(
                            "Select multiple",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * .018,
                            ),
                          ),
                        )
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.height * .024),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.height * .022,
                    backgroundColor: Colors.grey[900],
                    child: const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .012),
            child: Stack(
              children: [
                photos(),
                Positioned(
                    top: MediaQuery.of(context).size.height * .21,
                    left: MediaQuery.of(context).size.height * .149,
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.height * .006),
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.height * .031)),
                        child: const CameraNavBar(
                          isWatch: false,
                        ))),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget photos() {
    return Column(
      children: [
        for (int i = 0; i < 3; i++)
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 1, bottom: 1),
                  child: Image.network(
                    Faker().image.image(random: true),
                    width: (MediaQuery.of(context).size.width / 4) - 3,
                    height: (MediaQuery.of(context).size.height / 10),
                    fit: BoxFit.cover,
                  ),
                ),
            ],
          ),
      ],
    );
  }
}
