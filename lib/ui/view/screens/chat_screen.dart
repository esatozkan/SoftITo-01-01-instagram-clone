import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/widgets/chat_dm.dart';
import 'package:instagram_clone/ui/view/widgets/chat_search_bar.dart';

import '../widgets/stories.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChatDM> dms = [
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
      const ChatDM(),
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          width: size.width,
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              Faker().person.firstName(),
              textAlign: TextAlign.start,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
          ],
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/camera.png",
                width: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/plus.png",
                width: 25,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 20,
            ),
            const ChatSearchBar(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 115,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) => Stories(
                    color: index == 0 ? Colors.green : Colors.yellow,
                    image: Faker().image.image(
                        random: true,
                        keywords: ["person"],
                        width: 68,
                        height: 68),
                    name: Faker().person.firstName()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Messages',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Flexible(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: dms,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
