import 'package:flutter/material.dart';
import 'package:instagram_clone/data/constants/constants.dart';
import 'package:instagram_clone/ui/view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: bgColor),
      home: HomeScreen(),
    );
  }
}
