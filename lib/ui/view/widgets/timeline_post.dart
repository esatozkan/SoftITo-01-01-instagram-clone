import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/data/constants/constants.dart';
import 'package:instagram_clone/data/entities/Models/post_model.dart';

class TimelinePosts extends StatelessWidget {
  final PostModel post;
  const TimelinePosts({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: 70,
          decoration: BoxDecoration(color: bgColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/icons/profile.png',
                    width: 35,
                    height: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Your story',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ],
          ),
        ),
        Image.network(
          post.media,
          fit: BoxFit.cover,
        ),
        Container(
          width: size.width,
          height: 100,
          decoration: BoxDecoration(color: bgColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/heart.png",
                  width: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/comment.png",
                  width: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/dm.png",
                  width: 30,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/save.png",
                  width: 30,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
