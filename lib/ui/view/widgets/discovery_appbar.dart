import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/providers/discovery_provider.dart';
import 'package:provider/provider.dart';

class DiscoveryAppbar extends StatelessWidget implements PreferredSizeWidget {
  const DiscoveryAppbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(65);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            SizedBox(
              height: 40,
              child: AnimatedContainer(
                width: MediaQuery.of(context).size.width *
                    (context.watch<DiscoveryProvider>().searchView
                        ? 0.75
                        : 0.9),
                duration: const Duration(milliseconds: 250),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white12,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: TextField(
                    onTap: () {
                      context.read<DiscoveryProvider>().changeSearchView();
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
            if (context.watch<DiscoveryProvider>().cancelView) const Spacer(),
            if (context.watch<DiscoveryProvider>().cancelView)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    context.read<DiscoveryProvider>().changeSearchView();
                  },
                  child: const FittedBox(
                    child: Text(
                      "Cancel",
                      overflow: TextOverflow.fade,
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              )
          ],
        ));
  }
}
