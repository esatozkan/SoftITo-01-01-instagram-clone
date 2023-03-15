import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/ui/view/widgets/stories.dart';
import 'package:instagram_clone/ui/view/widgets/timeline_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TimelineAppbar(),
      body: Center(
        child: StoriesWidgets(),
      ),
    );
  }
}
