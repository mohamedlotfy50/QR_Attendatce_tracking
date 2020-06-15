import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:project/widgets/pages/user/scan.dart';

import 'alert.dart';

class Student {
  String email, password, userId, name, id;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  Student(
      this.name, this.id, this.email, this.password, this.formkey, this.userId);
  Student.fromSnapshot(DataSnapshot snapshot)
      : name = snapshot.value['name'],
        id = snapshot.value['id'];
  toJson() {
    return {
      'name': name,
      'id': id,
    };
  }

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
}
