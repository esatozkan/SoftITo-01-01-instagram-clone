import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class CommentBottomBar extends StatelessWidget {
  const CommentBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 50,
        decoration: const BoxDecoration(color: Colors.black),
        child: SizedBox(
          height: 40,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white12,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                style: const TextStyle(color: Colors.white70),
                cursorColor: Colors.white70,
                decoration: InputDecoration(
                  suffixIconConstraints: const BoxConstraints(
                    maxWidth: 30,
                    maxHeight: 30,
                  ),
                  suffix: const Padding(
                    padding: EdgeInsets.only(right: 10),
                    // child: Image.asset(
                    //   'assets/icons/dm.png',
                    // ),
                    child: Text(
                      'Send',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  border: InputBorder.none,
                  hintText: 'Comment as ${Faker().person.firstName()}',
                  hintStyle: const TextStyle(color: Colors.white70),
                  prefixIconConstraints: const BoxConstraints(maxWidth: 50),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          Faker().image.image(
                            keywords: [
                              "profile",
                              "picture",
                              "selfie",
                              "person",
                              "real person"
                            ],
                          ),
                          scale: 0.15),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
