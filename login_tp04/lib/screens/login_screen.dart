import 'package:flutter/material.dart';
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
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlue,
                    width:2 ,
                  ),
                ),
                hintText: 'alguien@email.com',
                labelText: 'Correo Electronico',
                labelStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(
                  Icons.alternate_email_sharp, color: 
                  Colors.grey[800],
                ),

              ),
            ),
          ],
        )
      ),
    );
  }
}