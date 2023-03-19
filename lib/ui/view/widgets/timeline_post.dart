import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '/ui/view/widgets/send_post.dart';
import '/ui/view/screens/comments_screen.dart';
import '/ui/view/widgets/post_preview.dart';
import '/data/constants/constants.dart';
import '/data/entities/Models/post_model.dart';

class TimelinePosts extends StatefulWidget {
  final PostModel post;
  const TimelinePosts({super.key, required this.post});

  @override
  State<TimelinePosts> createState() => _TimelinePostsState();
}

class _TimelinePostsState extends State<TimelinePosts> {
  bool _isLiked = false;
  bool _isSaved = false;
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
                      widget.post.userAvatar,
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
        GestureDetector(
          onLongPress: () {
            showDialog(
                context: context,
                builder: (BuildContext context) => PostPreview(
                      postImg: widget.post.media,
                      avatar: widget.post.userAvatar,
                      username: widget.post.username,
                    ));
          },
          child: Image.network(
            widget.post.media,
            fit: BoxFit.cover,
          ),
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => CommentScreen(
                              post: widget.post,
                            )));
              },
              icon: Image.asset(
                "assets/icons/comment.png",
                width: 30,
              ),
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet<void>(
                  backgroundColor: Colors.grey.shade900,
                  context: context,
                  useSafeArea: true,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          color: Colors.grey.shade900,
                        ),
                        height: 400,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 25,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    widget.post.media,
                                    width: 50,
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: AnimatedContainer(
                                    width: MediaQuery.of(context).size.width *
                                        0.88,
                                    duration: const Duration(milliseconds: 250),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white12,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: TextField(
                                        onTap: () {},
                                        style: const TextStyle(
                                            color: Colors.white70),
                                        cursorColor: Colors.white70,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Opacity(
                                              opacity: 0.7,
                                              child: Image.asset(
                                                "assets/icons/discovery.png",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Flexible(
                              child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: 20,
                                itemBuilder: (context, index) {
                                  return const SendPost();
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              icon: Image.asset(
                "assets/icons/dm.png",
                width: 30,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                setState(() {
                  _isSaved = !_isSaved;
                });

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: bgColor,
                    content:
                        const Text('You saved this post to your collection!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        setState(() {
                          _isSaved = !_isSaved;
                        });
                      },
                    ),
                  ),
                );
              },
              icon: _isSaved == true
                  ? Image.asset(
                      "assets/icons/save_pressed.png",
                      width: 25,
                    )
                  : Image.asset(
                      "assets/icons/save.png",
                      width: 25,
                    ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 2),
          child: Text(
            "${widget.post.likeCount.toString()} likes",
            textAlign: TextAlign.left,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 2),
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              recognizer: TapGestureRecognizer()..onTap = () {},
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
        ),
      ],
    );
  }
}
