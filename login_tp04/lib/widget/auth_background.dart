import 'package:flutter/material.dart';
 
class AuthBackground extends StatelessWidget {
  final Widget child;

  const AuthBackground({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blueAccent,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _AmberBox(),
          SafeArea(
            child: Container(
              width: double.infinity,
              // height: 200,
              // color: Colors.red,
              margin: EdgeInsets.only(top: 30),
              child: Icon(
                Icons.person_pin, 
                color: Colors.white,
                size: 100,
              ),
            )
          ),
          this.child,
        ],
      ),
    );
  }
}

class _AmberBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.35,
      color: Colors.amber,
    );
  }
}