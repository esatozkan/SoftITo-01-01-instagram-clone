import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '/data/entities/Models/reels_model.dart';
import '../../../data/constants/constants.dart';

class ReelsPost extends StatefulWidget {
  final ReelsModel reel;
  const ReelsPost({super.key, required this.reel});

  @override
  State<ReelsPost> createState() => _ReelsPostState();
}

class _ReelsPostState extends State<ReelsPost> {
  bool _isFollowed = false;
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              widget.reel.media,
              fit: BoxFit.cover,
            ),
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isLiked = !_isLiked;
                          });
                        },
                        child: _isLiked == false
                            ? Image.asset(
                                "assets/icons/heart.png",
                                width: 30,
                              )
                            : Image.asset(
                                "assets/icons/heart_pressed.png",
                                width: 30,
                              ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${widget.reel.likeCount}",
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
                        "${widget.reel.commentCount}",
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
                          widget.reel.userAvatar,
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
                    widget.reel.firstName,
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
                        onPressed: () {
                          setState(() {
                            _isFollowed = !_isFollowed;
                          });
                        },
                        child: _isFollowed == false
                            ? const Text(
                                'Follow',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.white),
                              )
                            : const Text(
                                'Following',
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
                    widget.reel.username,
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
                            widget.reel.userAvatar,
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
                              widget.reel.userAvatar,
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
