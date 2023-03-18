import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/ui/providers/comment_provider.dart';
import '/data/entities/Models/comment_model.dart';

class CommentBottomBar extends StatefulWidget {
  const CommentBottomBar({super.key, required this.textEditingController});
  final TextEditingController textEditingController;

  @override
  State<CommentBottomBar> createState() => _CommentBottomBarState();
}

class _CommentBottomBarState extends State<CommentBottomBar> {
  @override
  Widget build(BuildContext context) {
    CommentProvider commentProvider = Provider.of<CommentProvider>(context);
    return SafeArea(
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
                controller: widget.textEditingController,
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
                          content: widget.textEditingController.text,
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
    );
  }
}
