import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pdf extends StatefulWidget {
  @override
  _PdfState createState() => _PdfState();
}

class _PdfState extends State<Pdf> {
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
          title: Text('PDF'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(7),
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: Image.asset('images/pdf.png'),
                title: Text('content name'),
                subtitle: Text('300 MB'),
                trailing: Text('4/11'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(7),
              child: ListTile(
                contentPadding: EdgeInsets.all(5),
                leading: Image.asset('images/pdf.png'),
                title: Text('content name'),
                subtitle: Text('300 MB'),
                trailing: Text('4/11'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
