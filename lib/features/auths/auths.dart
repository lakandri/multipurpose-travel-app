import 'package:firebase_auth/firebase_auth.dart';

Future<User?> signUpWithEmailPassword(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  } on FirebaseAuthException catch (e) {
    print('Error : ${e.message}');
    return null;
  }
}

Future<User?> signInWithEmailPassword(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  } on FirebaseAuthException catch (e) {
    print('Error : ${e.message}');
    return null;
  }
}
