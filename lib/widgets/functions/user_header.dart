import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/widgets/functions/login.dart';

class DataBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
      stream:
          Firestore.instance.collection('users').document(userId).snapshots(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.error);
        }
        try {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            default:
              return UserAccountsDrawerHeader(
                accountName: Text(snapshot.data['name']),
                accountEmail: Text(snapshot.data['id']),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(snapshot.data['image']),
                  radius: 50,
                ),
              );
          }
        } catch (e) {
          return UserAccountsDrawerHeader(
            accountName: Row(
              children: <Widget>[
                Icon(
                  Icons.warning,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('error'),
              ],
            ),
            accountEmail: Row(
              children: <Widget>[
                Icon(
                  Icons.warning,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('error'),
              ],
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/error.png'),
              radius: 50,
            ),
          );
        }
      },
    );
  }
}
