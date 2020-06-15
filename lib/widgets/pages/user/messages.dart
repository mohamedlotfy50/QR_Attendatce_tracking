import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Message extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(FontAwesomeIcons.chevronLeft),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Chat'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(7),
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blue,
                ),
                title: Text('User name'),
                subtitle: Text('message content ...'),
                trailing: Text('4/11'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(7),
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blue,
                ),
                title: Text('User name'),
                subtitle: Text('message content ...'),
                trailing: Text('4/11'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
