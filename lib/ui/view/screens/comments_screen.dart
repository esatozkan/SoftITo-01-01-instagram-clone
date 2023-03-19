import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/data/entities/Models/comment_model.dart';
import '/data/entities/Models/post_model.dart';
import '/ui/providers/comment_provider.dart';
import '/ui/view/widgets/comment.dart';
import '/data/constants/constants.dart';

class CommentScreen extends StatefulWidget {
  final PostModel post;
  const CommentScreen({super.key, required this.post});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  late TextEditingController textEditingController;
  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    CommentProvider commentProvider = Provider.of<CommentProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Comments',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
              commentProvider.comments.add(CommentModel(
                id: Faker().randomGenerator.integer(1000),
                username: Faker().internet.userName(),
                userAvatar: Faker().image.image(
                    random: true,
                    keywords: ["avatar", "person", "user", "profile"]),
                content: textEditingController.text,
                firstName: Faker().person.firstName(),
                hour: Faker().randomGenerator.integer(24, min: 1),
              ));
            },
            icon: Image.asset(
              'assets/icons/dm.png',
              width: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.green,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: bgColor,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            widget.post.userAvatar,
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      widget.post.username,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 76, right: 25),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: widget.post.content,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.white24,
                ),
                Flexible(
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ...commentProvider.comments
                          .map((e) => Comment(
                                commentModel: e,
                              ))
                          .toList()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 50,
          decoration: const BoxDecoration(color: Colors.black),
          child: SizedBox(
            height: 40,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white12,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.white70),
                  cursorColor: Colors.white70,
                  decoration: InputDecoration(
                    suffixIconConstraints: const BoxConstraints(
                      maxWidth: 30,
                      maxHeight: 30,
                    ),
                    suffix: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {});
                          commentProvider.comments.add(CommentModel(
                            id: Faker().randomGenerator.integer(1000),
                            username: Faker().internet.userName(),
                            userAvatar: Faker().image.image(
                                random: true,
                                keywords: [
                                  "avatar",
                                  "person",
                                  "user",
                                  "profile"
                                ]),
                            content: textEditingController.text,
                            firstName: Faker().person.firstName(),
                            hour: Faker().randomGenerator.integer(24, min: 1),
                          ));
                        },
                        child: const Text(
                          'Send',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    border: InputBorder.none,
                    hintText: 'Comment as ${Faker().person.firstName()}',
                    hintStyle: const TextStyle(color: Colors.white70),
                    prefixIconConstraints: const BoxConstraints(maxWidth: 50),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            Faker().image.image(
                              keywords: [
                                "profile",
                                "picture",
                                "selfie",
                                "person",
                                "real person"
                              ],
                            ),
                            scale: 0.15),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
