import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/data/constants/constants.dart';
import 'package:instagram_clone/data/entities/Models/post_model.dart';

class TimelinePosts extends StatefulWidget {
  final PostModel post;
  const TimelinePosts({super.key, required this.post});

  @override
  State<TimelinePosts> createState() => _TimelinePostsState();
}

class _TimelinePostsState extends State<TimelinePosts> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      widget.post.media,
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.post.username,
                    style: const TextStyle(color: Colors.white),
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
          widget.post.media,
          fit: BoxFit.cover,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _isLiked = !_isLiked;
                });
              },
              icon: _isLiked == false
                  ? Image.asset(
                      "assets/icons/heart.png",
                      width: 30,
                    )
                  : Image.asset(
                      "assets/icons/heart_pressed.png",
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
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/save.png",
                width: 30,
              ),
            ),
          ],
        ),
        Text(
          widget.post.likeCount.toString(),
          textAlign: TextAlign.left,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print(widget.post.username);
              },
            text: widget.post.username,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            children: [
              const TextSpan(text: " "),
              TextSpan(
                text: widget.post.content,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
