import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _auth = FirebaseAuth.instance;
final _db = FirebaseFirestore.instance;

class FirebaseApi {
  static signUpAlumni(
      String email, String password, String name, BuildContext context) async {
    try {
 await  _auth.createUserWithEmailAndPassword(email: email, password: password).then(
          (value) => _db
              .collection('user')
              .add(
                {"alumniName": name, 'email': email, "alumniId": ''},
              )
              .then(
                (value) => _auth.signOut(),
              )
              .then(
                (value) => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Successfully  Created  Account For $name '),
                  ),
                ),
              ),
        );

    } catch (error) {
      log(
        error.toString(),
      );
    }

 
  }
}
