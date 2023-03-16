import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../../../data/constants/constants.dart';

class ChatDM extends StatelessWidget {
  const ChatDM({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: CircleAvatar(
            radius: 42,
            backgroundColor: Colors.red,
            child: CircleAvatar(
                radius: 39,
                backgroundColor: bgColor,
                child: CircleAvatar(
                  radius: 34,
                  backgroundImage: NetworkImage(
                    Faker().image.image(
                        random: true,
                        keywords: ["person"],
                        width: 68,
                        height: 68),
                  ),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Faker().internet.userName(),
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                "sent just now",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/chat_camera.png',
              width: 27,
              height: 27,
            )),
      ],
    );
  }
}
