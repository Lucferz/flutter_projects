import 'package:flutter/material.dart';
import 'package:login_tp04/screens/screens.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      initialRoute: 'login',
      routes: {
        'login':( _ ) => LoginScreen(),
        'home': ( _ ) => HomeScreen()
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[100],
      )
    );
  }
}