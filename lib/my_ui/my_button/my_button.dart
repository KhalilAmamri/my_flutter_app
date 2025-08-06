import 'package:flutter/material.dart';
import 'package:my_flutter_app/my_tools/colors.dart';

class MyButton extends StatelessWidget {
  final String txt;
  final VoidCallback? onPressed; // Add this parameter

  const MyButton({
    super.key,
    required this.txt,
    this.onPressed, // Make it optional with a default of null
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Use the passed function
      child: Text(txt, style: TextStyle(fontSize: 16, color: Colors.black)),
      style: ElevatedButton.styleFrom(
        maximumSize: Size(double.infinity, 60),
        backgroundColor: MyButtonColor,
      ),
    );
  }
}
