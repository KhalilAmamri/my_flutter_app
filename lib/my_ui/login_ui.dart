import 'package:flutter/material.dart';
import 'package:my_flutter_app/my_code/auth_code.dart';
import 'package:my_flutter_app/my_ui/home_ui.dart';
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
            'Welcome to MyVideoAppp',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Image.asset("assets/images/MeetingImage.png"),
          ),
          MyButton(
            txt: 'Join Now or Meeting',
            onPressed: () {
              // Use onPressed instead of onClick
              print("Join Now or Meeting button clicked");
              try {
                _authCode.signInWithGoogle();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return HomeUi(); // Navigate to HomeUi after successful sign-in
                    },
                  ),
                );
                print('Sign in with Google successful');
              } catch (e) {
                print('Error during sign-in: $e');
              }
            },
          ),
        ],
      ),
    );
  }
}
