import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/data/constants/constants.dart';

class PostCreateGallery extends StatelessWidget {
  const PostCreateGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Gallery",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/expand_gallery.png",
                  width: 20,
                  height: 10,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: Image.asset("assets/icons/multi_choice.png"),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset("assets/icons/chat_camera.png"),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          height: 280,
          child: GridView.count(
            crossAxisCount: 4,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: bgColor),
                ),
                child: Image.network(
                  Faker().image.image(random: true),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
