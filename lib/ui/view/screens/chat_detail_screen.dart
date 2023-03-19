import 'package:flutter/material.dart';
import '/ui/view/widgets/chat_detail_appbar.dart';

import '../widgets/chat_detail_body.dart';
import '../widgets/chat_detail_navbar.dart';

class ChatDetailScreen extends StatelessWidget {
  const ChatDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatDetailAppBar(),
      body: ChatDetailBody(),
      bottomNavigationBar: const ChatDetailNavBar(),
    );
  }
}
