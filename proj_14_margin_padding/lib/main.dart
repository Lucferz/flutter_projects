import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 100.0,
            height: 100.0,
            color: Colors.amberAccent,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15),
            child: Text(
              'Texto',
              style: TextStyle(backgroundColor: Colors.black, color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}