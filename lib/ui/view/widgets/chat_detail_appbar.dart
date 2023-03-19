import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatDetailAppBar extends StatelessWidget with PreferredSizeWidget {
  ChatDetailAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(70);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: AppBar(
        titleSpacing: 0.0,
        elevation: 5.0,
        title: Row(
          children: [
            IconButton(
              icon: Image.asset("assets/icons/backward_icon.png"),
              onPressed: () {},
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 10, 8),
              child: CircleAvatar(
                radius: 20,
                child: CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      faker.image.image(keywords: [
                        "people",
                        "face",
                        "selfie",
                      ]),
                      width: 68,
                      height: 68,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Faker().person.name(),
                    style: const TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 4.0),
                  const SizedBox(width: 4.0),
                  Text(
                    Faker().person.name(),
                    style: const TextStyle(fontSize: 9, color: Colors.grey),
                  ),
                ])
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/icons/chat_detail_video_call.png",
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
