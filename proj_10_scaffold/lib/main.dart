import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto 04',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scaffold'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Has hecho click en el float button');
          }
        ),
        drawer: Drawer(),
        endDrawer: Drawer(),
        backgroundColor: Colors.blue[100],
      ),
    );
  }
}