import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './alert.dart';
import '../pages/user/scan.dart';

String email, password;
String userId;

final GlobalKey<FormState> formkey = GlobalKey<FormState>();
Future<void> signIn(BuildContext context) async {
  final formState = formkey.currentState;
  if (formState.validate()) {
    formState.save();
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      FirebaseAuth.instance.currentUser().then((user) {
        userId = user.uid;
      });
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Scan()));
    } catch (e) {
      ackAlert(context, e.message);
    }
  }
}
