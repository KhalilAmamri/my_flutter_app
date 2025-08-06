import 'package:flutter/material.dart';
import 'package:my_flutter_app/my_code/auth_code.dart';
import 'package:my_flutter_app/my_ui/my_button/my_button.dart';

class LoginUi extends StatelessWidget {
  final AuthCode _authCode = AuthCode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to MyVideoApp',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset("assets/images/MeetingImage.png"),
          ),
          MyButton(
            txt: 'Join Now or Meeting',
            onClick: () {
              try {
                _authCode.signInWithGoogle(); // Await the sign-in process
                print('Sign in with Google successful');
              } catch (e) {
                print('Error during sign-in: $e'); // Handle any errors
              }
            },
          ),
        ],
      ),
    );
  }
}
