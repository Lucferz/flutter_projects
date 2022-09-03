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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text('Hola'),
                  ),
                  Switch(
                    value: true, 
                    onChanged: (value){
                      
                    },
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Expanded(
                    child: Text('Hola otra vez'),
                  ),
                  Switch(
                    value: true, 
                    onChanged: (value){
                      
                    },
                  ),
                ],
              ),
              Row(
                //horizontal
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //vertical
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.amber,
                  ),
                  /*
                  Atender que se genera un problema de espacios cuando los containers estan en una fila y se les quiere alinear
                  dentro de una columna en la vertical (como esta el codigo ahora mismo)
                  */
                  Container(
                    height: 100.0,
                    width: 50.0,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.blueGrey,
                  ),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}