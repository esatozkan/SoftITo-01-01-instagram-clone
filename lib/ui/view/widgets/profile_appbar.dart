import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '/ui/view/widgets/custom_icon_button.dart';
import '/data/constants/constants.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key, required this.appBar});
  final AppBar appBar;
  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      flexibleSpace: Container(
        width: size.width,
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          Faker().internet.userName(),
          textAlign: TextAlign.start,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      centerTitle: false,
      backgroundColor: bgColor,
      elevation: 0,
      actions: [
        CustomIconButton(
          icon: "assets/icons/story.png",
          onPressed: () {},
        ),
        CustomIconButton(
          icon: "assets/icons/more.png",
          onPressed: () {},
        ),
      ],
    );
  }
}
