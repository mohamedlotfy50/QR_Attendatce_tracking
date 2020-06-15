import 'package:flutter/material.dart';
import '../../functions/login.dart';
import 'package:flutter_progress_button/flutter_progress_button.dart';

class LoadButton extends StatefulWidget {
  @override
  _LoadButtonState createState() => _LoadButtonState();
}

class _LoadButtonState extends State<LoadButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF3FC4A2),
            Color(0xFF5494D4),
          ],
        ),
      ),
      child: ProgressButton(
        color: Colors.transparent,
        borderRadius: 50,
        defaultWidget: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        progressWidget: const CircularProgressIndicator(
          backgroundColor: Color(0xFF185A9D),
        ),
        width: 196,
        height: 40,
        onPressed: () async {
          await Future.delayed(
            const Duration(milliseconds: 0),
            () => signIn(context),
          );
        },
      ),
    );
  }
}
