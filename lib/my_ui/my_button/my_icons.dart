import 'package:flutter/material.dart';

class MyIcons extends StatelessWidget {
  final String text;
  final IconData icon;
  const MyIcons({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Icon(icon, size: 40.0, color: Colors.white),
        ),
        Text(text),
      ],
    );
  }
}
