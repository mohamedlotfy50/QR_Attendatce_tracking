import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/widgets/functions/user_header.dart';
import 'package:project/widgets/pages/user/pdf.dart';
import './messages.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DataBase(),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          leading: Icon(Icons.camera),
          title: Text('scan'),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          leading: Icon(FontAwesomeIcons.calendarCheck),
          title: Text('Attendance'),
          onTap: () => null,
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          leading: Icon(FontAwesomeIcons.userClock),
          title: Text('Classes'),
          onTap: () => null,
        ),
        Divider(
          color: Colors.lightGreen,
          height: 0.2,
        ),
        Container(
          margin: EdgeInsets.only(left: 8, top: 18, bottom: 5),
          child: Text(
            'Other',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 18,
            ),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          leading: Icon(Icons.notifications_active),
          title: Text('Notification'),
          onTap: () {},
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          leading: Icon(FontAwesomeIcons.comments),
          title: Text('Chat'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Message()),
            );
          },
        ),
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
          leading: Icon(FontAwesomeIcons.filePdf),
          title: Text('PDF'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pdf()),
            );
          },
        ),
      ],
    );
  }
}
