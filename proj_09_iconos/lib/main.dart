import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto 03',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Iconos'),
        ),
        body: Center(
          child: IconButton(
            onPressed: () {
                print('Has presionado el IconButton');
              },
            icon: Icon(Icons.ac_unit_rounded),
            iconSize: 100.0,
          ), 
        )
      ),
    );
  }
}