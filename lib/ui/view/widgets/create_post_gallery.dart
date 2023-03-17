import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/ui/view/widgets/custom_icon_button.dart';

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
              Padding(
                padding: const EdgeInsets.only(left: 10),
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
              Spacer(),
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
          height: 200,
          child: GridView.count(
            crossAxisCount: 4,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
               Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
               Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
               Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
              Container(
                padding: const EdgeInsets.all(1),
                child: Image.network(Faker().image.image(random: true),fit: BoxFit.fill,),
              ),
            ],
          ),
        )
      ],
    );
  }
}
