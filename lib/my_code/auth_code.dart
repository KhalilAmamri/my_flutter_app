// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class AuthCode {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   Future<void> signInWithGoogle() async {
//     try {
//       final GoogleSignIn googleSignIn = GoogleSignIn.standard(
//         // clientId: 'YOUR_OAUTH_CLIENT_ID.apps.googleusercontent.com',
//       );
//       final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
//       if (googleUser == null) return;
//       final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//       final UserCredential userCredential = await _auth.signInWithCredential(credential);
//       print("User signed in: ${userCredential.user?.displayName}");
//     } catch (e) {
//       print("Error signing in with Google: $e");
//     }
//   }
// }