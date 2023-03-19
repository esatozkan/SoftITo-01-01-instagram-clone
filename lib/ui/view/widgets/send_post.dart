import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SendPost extends StatelessWidget {
  const SendPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 25,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            Faker().image.image(
              random: true,
              keywords: ['people', 'nature'],
            ),
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 25,
        ),
        Column(
          children: [
            Text(Faker().person.firstName()),
            SizedBox(
              height: 15,
            ),
            Text(Faker().person.firstName()),
          ],
        )
      ],
    );
  }
}
