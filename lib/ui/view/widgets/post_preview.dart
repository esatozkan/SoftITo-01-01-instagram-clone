import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PostPreview extends StatelessWidget {
  final String postImg;
  final String avatar;
  final String username;
  const PostPreview(
      {super.key,
      required this.postImg,
      required this.avatar,
      required this.username});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(10),
                  topEnd: Radius.circular(10),
                ),
                color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      avatar,
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    username,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            height: MediaQuery.of(context).size.height * 0.35,
            child: Image.network(
              postImg,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  bottomStart: Radius.circular(10),
                  bottomEnd: Radius.circular(10),
                ),
                color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/icons/heart.png",
                    width: 30,
                  ),
                  Image.asset(
                    "assets/icons/comment.png",
                    width: 30,
                  ),
                  Image.asset(
                    "assets/icons/dm.png",
                    width: 30,
                  ),
                  const Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
