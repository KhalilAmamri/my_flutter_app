import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:my_flutter_app/my_code/auth_code.dart';
import 'package:my_flutter_app/my_code/firestoredb_code.dart';

class JitsiCode {
  final AuthCode _authCode = AuthCode();
  final FireStoreDB _fireStoreDB = FireStoreDB();
  Future<void> CreateMeet({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
  }) async {
    try {
      var options = JitsiMeetingOptions(
        roomNameOrUrl: roomName,
        serverUrl: "https://meet.jit.si",
        userDisplayName: _authCode.currentUser!.displayName,
        userEmail: _authCode.currentUser!.email,
        // userAvatarURL is not supported in this version, so omitted
        isAudioOnly: false,
        isAudioMuted: isAudioMuted,
        isVideoMuted: isVideoMuted,
      );
      _fireStoreDB.addMeetingtoDB(roomName);
      await JitsiMeetWrapper.joinMeeting(
        options: options,
        listener: JitsiMeetingListener(
          onConferenceWillJoin: (url) {
            print("onConferenceWillJoin: url: \$url");
          },
          onConferenceJoined: (url) {
            print("onConferenceJoined: url: \$url");
          },
          onConferenceTerminated: (url, error) {
            print("onConferenceTerminated: url: \$url, error: \$error");
          },
        ),
      );
    } catch (e) {
      print("Error creating meeting: \$e");
    }
  }
}
