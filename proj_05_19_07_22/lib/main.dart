import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Container(
                height: 100,
                //width: 100.0,
                //width: double.infinity,
                color: Colors.blueGrey,
              ),
              /*SizedBox(
                height: 20.0,
                width: 20.0,
              ),*/
              Container(
                height: 100,
                //width: 100.0,
                //width: double.infinity,
                color: Colors.teal,
              ),
              Container(
                height: 100.0,
                //width: 100.0,
                //width: double.infinity,
                color: Colors.brown,
              )
            ],
          )
        ),
      ),
    );
  }
}
