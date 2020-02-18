import 'package:flutter/material.dart';
import 'package:newcallapp/services/calls_and_messages_service.dart';
import 'package:newcallapp/services/service_locator.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CallsAndMessagesService _service = locator<CallsAndMessagesService>();
   String akshay = "8289875795";
   String ashwin = "9003014490";
   String avillie = "7350890889";
   String divakar = "9841355882";
   String hemanth = "9940534531";
   String hamid = "8148598005";
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            RaisedButton(
              child: Text(
                "Hamid ",
              ),
              onPressed: () => UrlLauncher.launch("tel://21213123123"),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text(
                "Akshay",
              ),
              onPressed: () => _service.call(ashwin),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text(
                "Ashwin",
              ),
              onPressed: () => _service.call(ashwin),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text(
                "Avillie",
              ),
              onPressed: () => _service.call(avillie),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text(
                "Divakar",
              ),
              onPressed: () => _service.call(divakar),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text(
                "Hemanth",
              ),
              onPressed: () => _service.call(hemanth),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}