import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/ui/providers/discovery_provider.dart';
import 'package:provider/provider.dart';
import 'custom_icon_button.dart';

class DiscoveryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DiscoveryAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(56);
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Expanded(
                child: SizedBox(
              height: 40,
              child: AnimatedContainer(
                width: MediaQuery.of(context).size.width*(context.watch<DiscoverViewModel>().searchView?.9:.7),
                duration: Duration(seconds: 1),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white70),
                    cursorColor: Colors.white70,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Opacity(
                            opacity: .7,
                            child: Image.asset(
                              "assets/icons/search.png",
                            ),
                          ),
                        )),
                  ),
                ),
              ),
            )),
            if (context.watch<DiscoverViewModel>().searchView)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  child: Text(
                    "Cancel",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              )
          ],
        ));
  }
}
