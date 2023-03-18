import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/widgets/comment_bottom_bar.dart';
import '/ui/view/widgets/comment.dart';
import '../../../data/constants/constants.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Comments',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
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
                            Faker().image.image(keywords: [
                              "profile",
                              "picture",
                              "selfie",
                              "person",
                              "real person"
                            ]),
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
                      Faker().internet.userName(),
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
                      text: Faker()
                          .lorem
                          .sentences(10)
                          .toString()
                          .replaceAll("[", "")
                          .replaceAll("]", "")
                          .replaceAll(",", ""),
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
                  child: ListView.builder(
                    itemCount: 15,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return const Comment();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const CommentBottomBar(),
    );
  }
}
