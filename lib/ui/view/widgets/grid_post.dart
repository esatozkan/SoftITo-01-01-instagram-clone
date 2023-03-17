import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../screens/single_post_screen.dart';

class GridPost extends StatelessWidget {
  const GridPost({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SinglePostScreen()));
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
        ),
        child: Image.network(
          Faker().image.image(random: true),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
