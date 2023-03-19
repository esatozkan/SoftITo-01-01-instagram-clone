import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class SendPost extends StatefulWidget {
  const SendPost({super.key});

  @override
  State<SendPost> createState() => _SendPostState();
}

class _SendPostState extends State<SendPost> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        child: Row(
          children: [
            const SizedBox(
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
            const SizedBox(
              width: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Faker().person.firstName(),
                  style: const TextStyle(color: Colors.white),
                ),
                Text(Faker().person.firstName(),
                    style: const TextStyle(color: Colors.white24)),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: _isSelected == false
                  ? Image.asset(
                      'assets/icons/not_selected.png',
                      width: 20,
                    )
                  : Image.asset(
                      'assets/icons/selected.png',
                      width: 20,
                    ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}
