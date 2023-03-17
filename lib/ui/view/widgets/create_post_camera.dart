import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PostCreateCamera extends StatelessWidget {
  const PostCreateCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.network(
            Faker().image.image(
                  height: 390,
                  width: MediaQuery.of(context).size.width.toInt(),
                ),
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 330),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/camera_stack_icon.png"),
            ),
          )
        ],
      ),
    );
  }
}
