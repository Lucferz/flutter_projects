import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Proyecto 01'),
        ),
        body: Center(
          child: Container(
            child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                backgroundColor: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}