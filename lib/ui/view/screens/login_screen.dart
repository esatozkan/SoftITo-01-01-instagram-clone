import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/screens/forget_password_screen.dart';
import 'package:instagram_clone/ui/view/screens/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPressed = false;
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/instagram.png',
                height: 50,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 50,
                child: TextField(
                  controller: usernameController,
                  cursorColor: Colors.grey.shade500,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade900,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black)),
                    hintText: 'Phone number, username or email address',
                    hintStyle:
                        const TextStyle(color: Colors.white38, fontSize: 13),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 50,
                child: TextField(
                  controller: passwordController,
                  obscureText: !_isPressed,
                  cursorColor: Colors.grey.shade500,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isPressed = !_isPressed;
                        });
                      },
                      icon: _isPressed == false
                          ? const Icon(Icons.visibility_off_outlined)
                          : const Icon(Icons.visibility_outlined),
                    ),
                    suffixIconColor: Colors.white,
                    filled: true,
                    fillColor: Colors.grey.shade900,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black)),
                    hintText: 'Password',
                    hintStyle:
                        const TextStyle(color: Colors.white38, fontSize: 13),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgetPasswordScreen()));
                    },
                    child: const Text(
                      'Forgotten password?',
                      style: TextStyle(color: Colors.blue, fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    width: 32,
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {
                      if (usernameController.text == "admin" &&
                          passwordController.text == "123") {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()));
                      }
                    },
                    child: const Text('Log in')),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: 30,
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
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Don't have an account? Sign up",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
