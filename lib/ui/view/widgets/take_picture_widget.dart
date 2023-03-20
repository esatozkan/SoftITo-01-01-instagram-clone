import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class TakePicture extends StatefulWidget {
  const TakePicture({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  State<TakePicture> createState() => _TakePictureState();
}

class _TakePictureState extends State<TakePicture> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.height * .186,
        ),
        CircleAvatar(
          radius: MediaQuery.of(context).size.height * .049,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.height * .044,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.height * .039,
              backgroundImage: AssetImage(widget.image),
              backgroundColor: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.height * .024),
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.height * .032,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.height * .029,
              backgroundImage: NetworkImage(Faker().image.image(random: true)),
            ),
          ),
        ),
        CircleAvatar(
          radius: MediaQuery.of(context).size.height * .024,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.height * .022,
            backgroundImage: NetworkImage(Faker().image.image(random: true)),
          ),
        ),
      ],
    );
  }
}
