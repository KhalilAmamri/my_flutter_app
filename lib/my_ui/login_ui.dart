import 'package:flutter/material.dart';
import 'package:my_flutter_app/my_ui/my_button/my_button.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome too MyVideoApp',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Image.asset("assets/images/MeetingImage.png"),
          MyButton(txt: 'Join Now or Meeting'),
        ],
      ),
    );
  }
}
