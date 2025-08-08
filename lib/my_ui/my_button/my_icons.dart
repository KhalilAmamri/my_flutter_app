import 'package:flutter/material.dart';

class MyIcons extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? Onclick; // Optional callback for icon click
  const MyIcons({
    super.key,
    required this.icon,
    required this.text,
    this.Onclick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: Onclick, // Call the optional callback if provided
          child: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Icon(icon, size: 40.0, color: Colors.white),
          ),
        ),
        Text(text),
      ],
    );
  }
}
