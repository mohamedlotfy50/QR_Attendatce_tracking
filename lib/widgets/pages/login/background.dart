import 'package:flutter/material.dart';
import './login_card.dart';

class BackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF43CEA2),
            Color(0xFF185A9D),
          ],
        ),
      ),
      child: LoginCard(),
    );
  }
}
