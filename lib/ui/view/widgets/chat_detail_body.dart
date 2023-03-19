import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatDetailBody extends StatelessWidget {
  ChatDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 15),
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 20,
                itemBuilder: (context, index) => MessageRow(index),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget MessageRow(int indexMessage) {
    bool alignment = indexMessage % 3 == 0 ? true : false;
    return Row(
      mainAxisAlignment:
          alignment == false ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(right: 5),
          child: alignment == false
              ? null
              : CircleAvatar(
                  radius: 10,
                  child: CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        faker.image.image(
                          keywords: [
                            "people",
                            "selfie",
                          ],
                        ),
                        width: 68,
                        height: 68,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              alignment == false ? Colors.blue : Color(0xFF262626),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          onPressed: () {},
          child: Text(
            style: TextStyle(color: Colors.white),
            Faker().lorem.toString(),
          ),
        ),
      ],
    );
  }
}
