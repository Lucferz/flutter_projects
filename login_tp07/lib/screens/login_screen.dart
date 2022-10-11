import 'package:flutter/material.dart';
import 'package:login_tp07/providers/login_form_provider.dart';
import 'package:login_tp07/ui/ui.dart';
import 'package:login_tp07/widgets/widgets.dart';
import 'package:provider/provider.dart';

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
                    ChangeNotifierProvider(
                      create: (context) => LoginFormProvider(),
                      child: _LoginForm(),
                    )
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
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
        key: loginForm.formkey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
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
              onChanged: (value) => loginForm.email = value,
              validator: (value) {
                String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
       
                RegExp regExp  = new RegExp(pattern);
      
                return regExp.hasMatch(value?? '') ? null : 'Porfavor ingrese una direccion de correo electronico valida';
              }
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
              onChanged: (value) => loginForm.password = value,
              validator: (value) {
                if (value != null && value.length >=6) return null;
                return 'La Contraseña debe ser mayor a 6 caracteres';
              },
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
                child: Text(
                  loginForm.isLoading? 'Espere':'Ingresar' ,
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 18
                  ),
                ),
              ),
              onPressed:loginForm.isLoading?null: () async {
                
                FocusScope.of(context).unfocus();
                if(!loginForm.isValidForm())return null;
                loginForm.isLoading = true;
                await Future.delayed(Duration(seconds: 2));
                loginForm.isLoading = false;
                Navigator.popAndPushNamed(context, 'home');
              },
            ),
            SizedBox(height: 30,),
          ],
        ),
      )
    );
  }
}