import 'package:flutter/material.dart';
import './widgets/pages/login/background.dart';
import 'package:firebase_core/firebase_core.dart';

final Future<FirebaseApp> app = FirebaseApp.configure(
  name: 'project',
  options: FirebaseOptions(
      projectID: 'project-8765b',
      googleAppID: '1:970916940564:android:2dc62900460dbc239ad001',
      databaseURL: 'https://project-8765b.firebaseio.com',
      apiKey: 'AIzaSyAGzdAQzl9mi-LxagNsMy2txpcZlVMe9U0',
      gcmSenderID: '970916940564'),
);

void main() => runApp(Login());

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var _focusOnBlank = FocusNode();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: GestureDetector(
            child: BackGround(),
            onTap: () {
              FocusScope.of(context).requestFocus(_focusOnBlank);
            },
            behavior: HitTestBehavior.opaque,
          ),
        ),
      ),
    );
  }
}
