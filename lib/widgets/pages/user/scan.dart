import 'package:flutter/material.dart';
import 'package:project/widgets/functions/get_data.dart';
import '../user/drawer.dart';

class Scan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scanner(),
    );
  }
}

class Scanner extends StatefulWidget {
  @override
  _ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  /*final DatabaseReference database = FirebaseDatabase.instance
      .reference()
      .child('subject')
      .child('is')
      .child('lec2');

  List result = [''];
  String wifi = ' ';
  String level = '';
  String wifiIp = ' ';
  Future scan() async {
     String name;

    
    database.push().set(
      {'name':name,  'id': id},
    );
    //String ssid = await Wifi.ssid;

    int levelw = await Wifi.level;
    String ip = await Wifi.ip;
    var wifiBSSID = await (Connectivity().getWifiBSSID());

    String code = await FlutterBarcodeScanner.scanBarcode(
        "#970000", "cancel", true, ScanMode.DEFAULT);
    setState(() {
      result = code.split(' ');
      print(result[0]);
      print(result[1]);
      wifi = wifiBSSID;
      level = '$levelw';
      wifiIp = ip;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Scan'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              /*gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF43CEA2),
                Color(0xFF185A9D),
              ],
            ),*/
              ),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 30,
              height: MediaQuery.of(context).size.height * 4 / 5,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 0.4, color: Colors.grey),
                image: DecorationImage(
                    image: AssetImage('images/cover2.png'), fit: BoxFit.fill),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/code.png'),
                            fit: BoxFit.cover),
                        border: Border.all(width: 1, color: Colors.black)),
                  ),
                  Text(
                    'you can register your\nattendance by\n taping scan',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  FloatingActionButton.extended(
                    icon: Icon(Icons.camera),
                    label: Text(
                      'Scan',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () => scan(context),
                  ),
                ],
              ),
            ),
          ),
        ),
        drawer: Drawer(
          child: DrawerList(),
        ),
      ),
    );
  }
}
