import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TimelinePosts extends StatelessWidget {
  const TimelinePosts({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: 70,
          decoration: const BoxDecoration(color: Colors.grey),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/icons/profile.png',
                    width: 35,
                    height: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Your story',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ],
          ),
        ),
        Image.network(
          "https://images.pexels.com/photos/11291701/pexels-photo-11291701.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          fit: BoxFit.cover,
        ),
        Container(
          width: size.width,
          height: 100,
          decoration: const BoxDecoration(color: Colors.grey),
        )
      ],
    );
  }
}
