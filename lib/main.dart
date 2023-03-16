import 'package:flutter/material.dart';
import '/app_init.dart';
import '/data/constants/constants.dart';
import '/ui/providers/home_provider.dart';
import '/ui/providers/post_provider.dart';
import '/ui/providers/profile_provider.dart';
import '/ui/providers/story_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ListenableProvider(create: (_) => StoryProvider()),
      ListenableProvider(create: (_) => PostProvider()),
      ListenableProvider(create: (_) => HomeProvider()),
      ListenableProvider(create: (_) => ProfileProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: bgColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      home: AppInit(),
    );
  }
}
