import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChatDetailNavBar extends StatelessWidget {
  const ChatDetailNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 5, left: 1, right: 1),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomAppBar(
            color: Color(0xFF262626),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: IconButton(
                    color: Colors.blue,
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {},
                    icon: Image.asset("assets/icons/123.png"),
                  ),
                ),
                const SizedBox(
                  width: 310,
                  child: TextField(
                    cursorColor: Colors.blue,
                    enableSuggestions: false,
                    style: TextStyle(
                      color: Color(0xFF999999),
                    ),
                    decoration: InputDecoration(
                      hintText: "Mesaj...",
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/icons/mic_open.png",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
