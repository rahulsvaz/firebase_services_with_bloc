import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final _auth = FirebaseAuth.instance;
final _db = FirebaseFirestore.instance;

class FirebaseApi {
  static signUpAlumni(String email, String password, String name) async {
    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then(
          (value) => _db.collection('user').add(
            {"alumniName": name, 'email': email, "alumniId": ''},
          ).then(
            (value) => _auth.signOut(),
          ),
        );
  }
}
