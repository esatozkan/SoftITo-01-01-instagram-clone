import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/view/widgets/edit_profile_text_field.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('assets/icons/cancel_icon.png'),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/tick.png',
              width: 30,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx > 0) {
              Navigator.pop(context);
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Edit picture or avatar",
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: EditProfileTextField(
                  label: "Name",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: EditProfileTextField(
                  label: "Username",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: EditProfileTextField(
                  label: "Bio",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RichText(
                  text: const TextSpan(
                    text: 'Add Link',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Colors.white24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: RichText(
                  text: TextSpan(
                    text: 'Switch to professional account',
                    style: const TextStyle(color: Colors.blue, fontSize: 18),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Colors.white24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: RichText(
                  text: TextSpan(
                    text: 'Personal information settings',
                    style: const TextStyle(color: Colors.blue, fontSize: 18),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
                color: Colors.white24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
