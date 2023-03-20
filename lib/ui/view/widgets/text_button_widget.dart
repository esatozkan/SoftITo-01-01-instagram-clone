import 'package:flutter/material.dart';

Widget textButton(String icon, double width) {
  return TextButton(
    onPressed: () {},
    child: Image.asset(
      icon,
      width: width,
    ),
  );
}
