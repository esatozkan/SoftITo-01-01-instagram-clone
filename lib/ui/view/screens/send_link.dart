import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '/data/constants/constants.dart';

class SendLink extends StatefulWidget {
  const SendLink({super.key});

  @override
  State<SendLink> createState() => _SendLinkState();
}

class _SendLinkState extends State<SendLink> {
  bool _emailSelect = false;
  bool _smsSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx > 0) {
            Navigator.pop(context);
          }
        },
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    Faker().image.image(
                      random: true,
                      keywords: ["asian", "girl"],
                    ),
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  Faker().person.firstName(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: const Text(
                    "We'll send you a link or login code to get back into your account",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 35,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 32,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Send an email',
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          Text(
                            '*@gmail.com',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _emailSelect = !_emailSelect;
                            _smsSelect = false;
                          });
                        },
                        child: _emailSelect == false
                            ? Image.asset(
                                'assets/icons/not_selected.png',
                                width: 25,
                              )
                            : Image.asset(
                                'assets/icons/selected.png',
                                width: 25,
                              ),
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 35,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 32,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            'Send an SMS message',
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          Text(
                            '+** ********61',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _smsSelect = !_smsSelect;
                            _emailSelect = false;
                          });
                        },
                        child: _smsSelect == false
                            ? Image.asset(
                                'assets/icons/not_selected.png',
                                width: 25,
                              )
                            : Image.asset(
                                'assets/icons/selected.png',
                                width: 25,
                              ),
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Center(
                              child: Text("We've sent you a login link!")),
                          backgroundColor: bgColor,
                        ),
                      );
                    },
                    child: const Text('Send Login Link'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Can't reset your password?",
                  style: TextStyle(color: Colors.blue, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
