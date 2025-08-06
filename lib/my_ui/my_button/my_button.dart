import 'package:flutter/material.dart';
import 'package:my_flutter_app/my_tools/colors.dart';

class MyButton extends StatelessWidget {
  final String txt;
  const MyButton({super.key, required this.txt, required Null Function() onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(txt, style: TextStyle(fontSize: 16, color: Colors.black)),
      style: ElevatedButton.styleFrom(
        maximumSize: Size(double.infinity, 60),
        backgroundColor: MyButtonColor,
      ),
    );
  }
}
