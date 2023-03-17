import 'package:flutter/material.dart';
import '/ui/providers/discovery_provider.dart';
import 'package:provider/provider.dart';

class ChatSearchBar extends StatelessWidget {
  const ChatSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    DiscoveryProvider discoveryProvider =
        Provider.of<DiscoveryProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
          child: AnimatedContainer(
            width: MediaQuery.of(context).size.width *
                (discoveryProvider.searchView ? 0.75 : 0.9),
            duration: const Duration(milliseconds: 250),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white12,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                onTap: () {
                  discoveryProvider.changeSearchView();
                },
                style: const TextStyle(color: Colors.white70),
                cursorColor: Colors.white70,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search",
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Opacity(
                          opacity: 0.7,
                          child: Image.asset(
                            "assets/icons/discovery.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        if (discoveryProvider.cancelView) const Spacer(),
        if (discoveryProvider.cancelView)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                discoveryProvider.changeSearchView();
              },
              child: const Text(
                "Cancel",
                overflow: TextOverflow.fade,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          )
      ],
    );
  }
}
