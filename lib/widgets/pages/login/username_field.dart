import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../functions/login.dart';

class UsernameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (input) {
        if (input.isEmpty) {
          return 'Please enter an email';
        } else if (!input.contains('@')) {
          return 'There is missing @';
        } else if (!input.contains('.')) {
          return 'There is missing dot';
        }
        return null;
      },
      onSaved: (_input) => email = _input,
      onFieldSubmitted: (_) {
        FocusScope.of(context).requestFocus(
          FocusNode(),
        );
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromRGBO(255, 255, 255, 0.8),
        contentPadding: EdgeInsets.all(8),
        labelText: 'Email',
        labelStyle: TextStyle(color: Colors.grey),
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
          margin: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.person,
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
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
