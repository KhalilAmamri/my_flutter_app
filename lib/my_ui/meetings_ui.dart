import 'package:flutter/material.dart';
import 'package:my_flutter_app/my_ui/my_button/my_icons.dart';

class MeetingsUi extends StatelessWidget {
  const MeetingsUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyIcons(icon: Icons.video_call, text: 'New Meeting'),
          MyIcons(icon: Icons.add_box_rounded, text: 'Join Meeting'),
          MyIcons(icon: Icons.calendar_today, text: 'Schedule'),
          MyIcons(icon: Icons.arrow_upward, text: 'Share screen'),
        ],
      ),
    );
  }
}
