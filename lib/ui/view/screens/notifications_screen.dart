import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Icon(
              Icons.chevron_left_rounded,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
        title: const Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "Notifications",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "Earlier",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: ListView.builder(
                    itemCount: 15,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                    Faker().image.image(random: true)),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 3,
                              width: MediaQuery.of(context).size.width / 2,
                              padding: EdgeInsets.only(top: 25),
                              child: Text(
                                Faker().lorem.sentence(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Image.network(
                                Faker().image.image(
                                      random: true,
                                      width: 70,
                                      height: 70,
                                    ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
