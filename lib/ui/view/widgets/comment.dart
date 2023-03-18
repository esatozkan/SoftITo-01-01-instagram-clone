import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/data/entities/Models/comment_model.dart';
import '../../../data/constants/constants.dart';

class Comment extends StatefulWidget {
  final CommentModel commentModel;
  const Comment({super.key, required this.commentModel});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 21,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 19,
              backgroundColor: bgColor,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  widget.commentModel.userAvatar,
                  width: 34,
                  height: 34,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.commentModel.username,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${widget.commentModel.hour}h",
                    style: const TextStyle(
                      color: Colors.white54,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    widget.commentModel.content,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Reply',
                      style:
                          const TextStyle(color: Colors.white60, fontSize: 12),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Send',
                      style:
                          const TextStyle(color: Colors.white60, fontSize: 12),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  _isLiked = !_isLiked;
                });
              },
              icon: _isLiked == false
                  ? Image.asset(
                      'assets/icons/heart.png',
                      width: 20,
                    )
                  : Image.asset(
                      'assets/icons/heart_pressed.png',
                      width: 20,
                    )),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
