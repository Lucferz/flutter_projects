import 'package:flutter/material.dart';
import 'package:login_tp07/ui/ui.dart';
import 'package:login_tp07/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 250,),
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(height:10),
                    Text('Login', style: Theme.of(context).textTheme.headline4,),
                    SizedBox(height: 30,),
                    _LoginForm(),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Text('Crear una nueva cuenta', style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),)
            ],
          ),
        )
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
              hintText: 'juan@email.com', 
              labelText: 'Correo',
              prefixIcon: Icons.alternate_email,
            ),
          ),
          SizedBox(height: 15,),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecorations.authInputDecoration(
              hintText: '*************', 
              labelText: 'Contrasña',
              prefixIcon: Icons.lock_sharp
            ),
          ),
          SizedBox(height: 30,),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            disabledColor: Colors.grey,
            elevation: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              child: Text('Ingresar', style: TextStyle(color: Colors.white, fontSize: 18),),
            ),
            onPressed:() {
              
            },
          ),
          SizedBox(height: 30,),
        ],
      )
    );
  }
}