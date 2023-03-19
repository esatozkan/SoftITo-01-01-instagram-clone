import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/screens/send_link.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Trouble with logging in?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10.0, right: 20),
                child: Text(
                  "Enter your username or email and we'll send you a link to get back into your account.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                tabs: const [
                  Tab(
                    child: Text(
                      'Username',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Phone',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 50,
                        child: TextField(
                          // controller: usernameController,
                          cursorColor: Colors.grey.shade500,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade900,
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
                            hintText: 'Username or email address',
                            hintStyle: const TextStyle(
                                color: Colors.white38, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 30, right: 30),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 50,
                        child: TextField(
                          // controller: usernameController,
                          cursorColor: Colors.grey.shade500,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade900,
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.black)),
                            hintText: 'Phone number',
                            hintStyle: const TextStyle(
                                color: Colors.white38, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SendLink()));
                  },
                  child: const Text('Next'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Can't reset your password?",
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '-------------------------- OR --------------------------',
                style: TextStyle(color: Colors.white38),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Continue as ${Faker().person.firstName()}',
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Column(
          children: [
            const Divider(
              thickness: 1,
              color: Colors.white54,
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back to Login',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
