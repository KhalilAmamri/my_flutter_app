import 'package:flutter/material.dart';
import 'package:my_flutter_app/my_code/auth_code.dart';
import 'package:my_flutter_app/my_code/jitsi_code.dart';

class JoinMeetUI extends StatefulWidget {
  @override
  State<JoinMeetUI> createState() => _JoinMeetUIState();
}

class _JoinMeetUIState extends State<JoinMeetUI> {
  //
  late TextEditingController meetingID;
  late TextEditingController userName;
  final AuthCode _authCode = AuthCode();
  final JitsiCode _jitsiCode = JitsiCode();
  @override
  void initState() {
    meetingID = TextEditingController(text: "123456");
    userName = TextEditingController(
      text: _authCode.currentUser?.displayName ?? '',
    );
    super.initState();
  }

  JoinMeetingButton() {
    _jitsiCode.CreateMeet(
      roomName: meetingID.text,
      isAudioMuted: true,
      isVideoMuted: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Join Meeting')),
      body: Column(
        children: [
          TextField(
            controller: meetingID,
            keyboardType: TextInputType.number,
            maxLines: 1,
            decoration: InputDecoration(
              fillColor: Colors.black,
              filled: true,
              border: InputBorder.none,
              hintText: 'Enter Meeting ID',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          TextField(
            controller: userName,
            keyboardType: TextInputType.number,
            maxLines: 1,
            decoration: InputDecoration(
              fillColor: Colors.black,
              filled: true,
              border: InputBorder.none,
              hintText: 'User Name',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          InkWell(
            child: Text(
              "Join",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onTap: JoinMeetingButton,
          ),
        ],
      ),
    );
  }
}
