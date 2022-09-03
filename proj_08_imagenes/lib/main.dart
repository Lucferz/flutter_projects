import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto 02',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Imagenes'),
        ),
        body: Center(
          child: Container(
            child: Image.network(
              'https://live.staticflickr.com/2553/3739944675_a6cabfcef7_c.jpg', 
              height: 300.0,
            ),
          ),
        ),
      ),
    );
  }
}