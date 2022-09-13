import 'package:flutter/material.dart';
import 'package:login_tp04/ui/input_decoration.dart';
import 'package:login_tp04/widget/card_container.dart';
import 'package:login_tp04/widget/widget.dart';
 

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250,),
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Text('Login', style: Theme.of(context).textTheme.headline4,),
                    SizedBox(height: 30,),
                    _loginForm(),
                    
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Text('Crear Nueva Cuenta', style: TextStyle(fontSize: 17),)
              // Text('Login', style: Theme.of(context).textTheme.headline4,),
              // SizedBox(height: 30,),
              // _loginForm(),
            ],
          ),
        )
      ),
    );
  }
}

class _loginForm extends StatelessWidget {
  // const _loginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: "luis@email.com", 
                labelText: "Correo Electronico",
                prefixIcon: Icons.alternate_email_sharp,
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: "MiContraseña", 
                labelText: "Contraseña",
                prefixIcon: Icons.lock,
              ),
            ),
            SizedBox(height: 40,),
            MaterialButton(
              onPressed: () {
                print('Presionado');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.black,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text('Ingresar', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      )
    );
  }
}