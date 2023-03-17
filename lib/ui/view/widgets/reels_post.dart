import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '/data/entities/Models/reels_model.dart';
import '../../../data/constants/constants.dart';

class ReelsPost extends StatelessWidget {
  final ReelsModel reel;
  const ReelsPost({super.key, required this.reel});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(reel.media),
          ),
          Column(
            children: [
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
                        "${reel.likeCount}",
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
                        "${reel.commentCount}",
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
                          reel.userAvatar,
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
                    reel.firstName,
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
                    reel.username,
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
                            reel.userAvatar,
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
                              reel.userAvatar,
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
    );
  }
}
