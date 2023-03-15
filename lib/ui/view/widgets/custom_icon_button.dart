import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String icon;
  final Function onPressed;
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15.0, right: 15.0, top: 25,
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
          onTap: () {
            onPressed();
          },
          child: Image.asset(
            icon,
            width: 25,
            height: 25,
          ),
        ),
      ),
    );
  }
}