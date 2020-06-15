import 'package:flutter/material.dart';
import './password_field.dart';
import './progress_button.dart';
import './username_field.dart';
import '../../functions/login.dart';

class LoginCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 5 / 6,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: AssetImage('images/cover.png'), fit: BoxFit.fill),
          ),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  width: 110,
                  height: 110,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                      child: UsernameField(),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                      child: PasswordField(),
                    ),
                  ],
                ),
                LoadButton(),
                FlatButton(
                  child: Text(
                    'Forgot ?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () => null,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
