import 'package:flutter/material.dart';
import '../../providers/chat_provider.dart';
import 'package:provider/provider.dart';

class ChatSearchBar extends StatelessWidget {
  const ChatSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    ChatProvider chatProvider = Provider.of<ChatProvider>(context);
    return Row(
      children: [
        SizedBox(
          height: 40,
          child: AnimatedContainer(
            width: MediaQuery.of(context).size.width *
                (chatProvider.searchView ? 0.75 : 0.9),
            duration: const Duration(milliseconds: 250),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white12,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                onTap: () {
                  chatProvider.changeSearchView();
                },
                style: const TextStyle(color: Colors.white70),
                cursorColor: Colors.white70,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Opacity(
                        opacity: 0.7,
                        child: Image.asset(
                          "assets/icons/discovery.png",
                        ),
                      ),
                    )
                    // contentPadding:
                    //     EdgeInsets.only(left: 5),
                    ),
              ),
            ),
          ),
        ),
        if (chatProvider.cancelView) const Spacer(),
        if (chatProvider.cancelView)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                chatProvider.changeSearchView();
              },
              child: const FittedBox(
                child: Text(
                  "Cancel",
                  overflow: TextOverflow.fade,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          )
      ],
    );
  }
}
