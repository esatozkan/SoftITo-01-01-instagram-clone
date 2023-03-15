import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TimelineAppbar extends StatelessWidget implements PreferredSizeWidget{
  const TimelineAppbar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(56);
  Widget build(BuildContext context) {
    return  AppBar();
  }
}