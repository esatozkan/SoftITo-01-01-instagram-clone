import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '/data/entities/Models/post_model.dart';
import '/data/constants/constants.dart';

class TargetProfileTop extends StatefulWidget {
  const TargetProfileTop({super.key, required this.post});
  final PostModel post;

  @override
  State<TargetProfileTop> createState() => _TargetProfileTopState();
}

class _TargetProfileTopState extends State<TargetProfileTop> {
  bool _isFollowing = false;

  @override
  Widget build(BuildContext context) {
    Faker faker = Faker();
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: size.width,
      height: size.height * 0.25,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 42,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 39,
                  backgroundColor: bgColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      widget.post.userAvatar,
                      width: 68,
                      height: 68,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    faker.randomGenerator.integer(50, min: 3).toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Text(
                    'Post',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text(faker.randomGenerator.integer(1000, min: 100).toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  const Text(
                    'Followers',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text(faker.randomGenerator.integer(1000, min: 80).toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)),
                  const Text(
                    'Following',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.post.username,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text(
                        faker.lorem.word(),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.60,
                )
              ],
            ),
          ),
          Container(
            width: size.width,
            height: size.height * 0.09,
            alignment: Alignment.bottomCenter,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  iconSize: 170,
                  onPressed: () {
                    setState(() {
                      _isFollowing = !_isFollowing;
                    });
                  },
                  icon: _isFollowing == false
                      ? Image.asset(
                          'assets/icons/follow.png',
                        )
                      : Image.asset(
                          'assets/icons/following.png',
                        ),
                ),
                IconButton(
                  iconSize: 180,
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/send_message.png',
                  ),
                ),
                IconButton(
                  iconSize: 30,
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/dropdown.png',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
