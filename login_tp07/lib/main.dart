import 'package:flutter/material.dart';
import 'package:login_tp07/screens/screens.dart';
import 'package:login_tp07/services/services.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(AppState());

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create:  ( _ ) =>AuthService(),
        ),
      ],
      child: MyApp(),
    );
  }
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productos App',
      initialRoute: 'login',
      routes: {
        'login': ( _ ) => LoginScreen(),
        'home': ( _ ) => HomeScreen(),
        'register':( _ ) => RegisterScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[250],
      ),
    );
  }
}