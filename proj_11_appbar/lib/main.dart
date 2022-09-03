import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto 05',
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          actions: <Widget>[
            IconButton(
              onPressed: _add, 
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: _remove, 
              icon: Icon(
                Icons.delete
                ),
            ),
          ],
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          leading: IconButton(
            onPressed: _volver_atras, 
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }

  void _remove() {
    print('remove presionado');
  }
  void _add() {
    print('Add presionado');
  }

  void _volver_atras() {
    print('Volver atras presionado');
  }
}