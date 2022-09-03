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
        body: SizedBox(
          width: double.infinity,
          child: Column(
            //alineado vertical
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //alineado horizontal
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.amber,
                height: 100.0,
                width: 100.0,
              ),
              Text('Hola'),
              Image.network('https://pbs.twimg.com/profile_images/1492742916493692928/pnmIKNOR_400x400.jpg', height: 100.0,),
            ],
          ),
        )
      ),
    );
  }
}