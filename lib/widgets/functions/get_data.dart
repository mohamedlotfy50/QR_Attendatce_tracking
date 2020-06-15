import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:project/widgets/functions/alert.dart';
import 'package:project/widgets/functions/login.dart';

String name;
String id;
final DatabaseReference database = FirebaseDatabase.instance
    .reference()
    .child('subject')
    .child('is')
    .child('lec2');

Future scan(context) async {
  Firestore.instance
      .collection('users')
      .document(userId)
      .get()
      .then((DocumentSnapshot ds) {
    name = ds.data['name'];
    id = ds.data['id'];
  });

  String code = await FlutterBarcodeScanner.scanBarcode(
      "#970000", "cancel", true, ScanMode.DEFAULT);
  if (code == 'hello world') {
    logon();
    ackAlert(context, 'Done');
  } else {
    ackAlert(context, 'error');
  }
}

Future logon() async {
  database.push().set(
    {'name': name, 'id': id},
  );
}
