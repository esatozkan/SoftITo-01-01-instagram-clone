import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ProfileGrid extends StatelessWidget {
  const ProfileGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
          ),
          child: Image.network(
            Faker().image.image(random: true),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
