import 'package:flutter/material.dart';
import 'package:login_tp07/services/services.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Inicio'),
        actions: [
          IconButton(
            onPressed: () {
              authService.logout();
              Navigator.pushReplacementNamed(context, 'login')              ;
            }, 
            icon: Icon(Icons.login_outlined),
          ),
        ],
      ),
    );
  }
}