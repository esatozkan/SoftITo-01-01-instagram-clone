import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DiscoverySearchScreen extends StatelessWidget {
  const DiscoverySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          for (int i = 0; i < 3; i++) person()
        ],
      ),
    ));
  }

  Widget person() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(Faker().image.image(random: true)),
          ),
        ),
        Column(
          children: [
            Text(
              Faker().person.name(),
              style: TextStyle(color: Colors.white),
            ),
            Opacity(
                opacity: .7,
                child: Text(
                  Faker().person.firstName(),
                  style: TextStyle(color: Colors.white),
                )),
          ],
        )
      ],
    );
  }
}
