import 'package:flutter/material.dart';

void main() {
  runApp(
    miApp(),
  );
}

class miApp extends StatelessWidget {
  //const miApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Container(
            //margin: EdgeInsets.all(20.0),
            //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 100.0),
            margin: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 20.0),
            color: Colors.white,
            height: 100.0,
            width: 100.0,
            child: Text('Tranquilo'),
          ),
        ),
      ),
    );
  }
}