import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/data/constants/constants.dart';

class ProfileTop extends StatelessWidget {
  const ProfileTop({super.key});

  @override
  Widget build(BuildContext context) {
    Faker faker = Faker();
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: size.width,
      height: size.height * 0.25,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 42,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 39,
                  backgroundColor: bgColor,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      faker.image.image(keywords: [
                        "profile",
                        "picture",
                        "selfie",
                        "person",
                        "real person"
                      ]),
                      width: 68,
                      height: 68,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    faker.randomGenerator.integer(50, min: 3).toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  const Text(
                    'Post',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text(faker.randomGenerator.integer(1000, min: 100).toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  const Text(
                    'Followers',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
              Column(
                children: [
                  Text(faker.randomGenerator.integer(1000, min: 80).toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white)),
                  const Text(
                    'Following',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        faker.person.firstName(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white),
                      ),
                      Text(
                        faker.lorem.word(),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.60,
                )
              ],
            ),
          ),
          Container(
            width: size.width,
            height: size.height * 0.09,
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 35, 35, 35)),
                    splashFactory: NoSplash.splashFactory,
                    minimumSize: MaterialStatePropertyAll(
                        Size(size.width * 0.44, size.width * 0.085)),
                  ),
                  onPressed: () {},
                  child: const Text('Edit Profile'),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 35, 35, 35)),
                    splashFactory: NoSplash.splashFactory,
                    minimumSize: MaterialStatePropertyAll(
                        Size(size.width * 0.44, size.width * 0.085)),
                  ),
                  onPressed: () {},
                  child: const Text('Share Profile'),
                ),
                Container(
                  height: size.height * 0.04,
                  width: size.width * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 35, 35, 35)),
                      splashFactory: NoSplash.splashFactory,
                      minimumSize: MaterialStatePropertyAll(
                          Size(size.width * 0.45, size.width * 0.085)),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
