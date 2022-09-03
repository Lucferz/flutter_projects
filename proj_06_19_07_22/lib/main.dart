import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
    );
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[400],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                //backgroundColor: Colors.amber,
                backgroundImage: AssetImage('img/images.png'),
                radius: 100.0,
                ),
              Text(
                'Candidato Anonimo',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
