import 'package:flutter/material.dart';
import '../../functions/login.dart';

class PasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (input) {
        if (input.isEmpty) {
          return 'Please enter a password';
        } else if (input.length < 6) {
          return 'The password should be at least 6 characters';
        }
        return null;
      },
      onSaved: (_input) => password = _input,
      obscureText: true,
      onFieldSubmitted: (_) {
        FocusScope.of(context).requestFocus(
          FocusNode(),
        );
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(255, 255, 255, 0.8),
        contentPadding: EdgeInsets.all(8),
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.grey),
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          margin: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF43CEA2),
                Color(0xFF185A9D),
              ],
            ),
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
