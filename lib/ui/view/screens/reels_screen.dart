import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../../../data/constants/constants.dart';
import '/ui/view/widgets/custom_bottom_nav_bar.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Reels',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/icons/reels_camera.png',
                      width: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 400,
                ),
                Row(
                  children: [
                    const Spacer(),
                    Column(
                      children: [
                        Image.asset(
                          "assets/icons/heart.png",
                          width: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          Faker()
                              .randomGenerator
                              .integer(1000, min: 40)
                              .toString(),
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Spacer(),
                    Column(
                      children: [
                        Image.asset(
                          "assets/icons/comment.png",
                          width: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          Faker()
                              .randomGenerator
                              .integer(1000, min: 40)
                              .toString(),
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.green,
                      child: CircleAvatar(
                        radius: 21,
                        backgroundColor: bgColor,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            faker.image.image(keywords: [
                              "profile",
                              "picture",
                              "selfie",
                              "person",
                              "real person"
                            ]),
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      Faker().person.firstName(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 125,
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  width: 1, color: Colors.white)),
                          onPressed: () {},
                          child: const Text(
                            'Follow',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white),
                          )),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Image.asset(
                          "assets/icons/dm.png",
                          width: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      Faker().lorem.word(),
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    const Spacer(),
                    Column(
                      children: const [
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: bgColor,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              faker.image.image(keywords: [
                                "profile",
                                "picture",
                                "selfie",
                                "person",
                                "real person"
                              ]),
                              width: 24,
                              height: 24,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: CircleAvatar(
                            radius: 13,
                            backgroundColor: bgColor,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                faker.image.image(keywords: [
                                  "profile",
                                  "picture",
                                  "selfie",
                                  "person",
                                  "real person"
                                ]),
                                width: 24,
                                height: 24,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Liked by ${Faker().person.firstName()} and ${Faker().randomGenerator.integer(500, min: 30)} others',
                      style: const TextStyle(
                        color: Colors.white54,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      '${Faker().person.firstName()} - Original Audio',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
