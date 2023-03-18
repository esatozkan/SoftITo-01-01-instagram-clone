import 'package:flutter/material.dart';
import '/ui/providers/comment_provider.dart';
import '/ui/providers/reels_provider.dart';
import '/ui/providers/chat_provider.dart';
import '/ui/providers/discovery_provider.dart';
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
      ListenableProvider(create: (_) => DiscoveryProvider()),
      ListenableProvider(create: (_) => HomeProvider()),
      ListenableProvider(create: (_) => ProfileProvider()),
      ListenableProvider(create: (_) => DiscoveryProvider()),
      ListenableProvider(create: (_) => ChatProvider()),
      ListenableProvider(create: (_) => ReelsProvider()),
      ListenableProvider(create: (_) => CommentProvider()),
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
        appBarTheme: AppBarTheme(backgroundColor: bgColor),
      ),
      home: const AppInit(),
    );
  }
}
