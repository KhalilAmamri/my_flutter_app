import 'package:flutter/material.dart';
import 'package:my_flutter_app/my_code/auth_code.dart';
import 'package:my_flutter_app/my_ui/my_button/my_button.dart';

class LoginUi extends StatelessWidget {
  // const LoginUi({super.key});
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
              // print('Join Now or Meeting button pressed');
              _authCode.signInWithGoogle().then((_) {
                print('Sign in with Google successful');
              }).catchError((error) {
                // Handle sign-in error
                print('Sign in with Google failed: $error');
              });
            },
          ),
        ],
      ),
    );
  }
}
