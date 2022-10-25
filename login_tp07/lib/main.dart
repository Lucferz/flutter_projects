import 'package:flutter/material.dart';
import 'package:login_tp07/screens/screens.dart';
import 'package:login_tp07/services/notification_service.dart';
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
        ChangeNotifierProvider(
          create:  ( _ ) =>ProductService(),
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
      initialRoute: 'home',
      routes: {
        'login': ( _ ) => LoginScreen(),
        'home': ( _ ) => HomeScreen(),
        'register':( _ ) => RegisterScreen(),
        'checkAuth':( _ ) => CheckAuthScreen(),
        'product':( _ ) => ProductScreen(),
      },
      scaffoldMessengerKey: NotificationService.messageKey,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[250],
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.indigo,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.indigo,
          elevation: 0,
        ),
      ),
    );
  }
}