import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireStoreDB {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void addMeetingtoDB(String meetingName) async {
    try {
      await _firestore
      .collection('users').doc(_auth.currentUser!.uid)
      .collection('Meetings').add({
        'meetingName': meetingName,
        'createdAt': Timestamp.now(),
      });

    } catch (e) {
      print('Error adding meeting to Firestore: $e');
    }
  }
}
