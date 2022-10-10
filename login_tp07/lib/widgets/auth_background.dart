import 'dart:js';

import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
    //  color: Colors.amber,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _PurpleBox(),
          SafeArea(
            child: Container(
              width: double.infinity,
              child: Icon(Icons.person_pin, color: Colors.white, size: 100),
              margin: EdgeInsets.only(top: 30),
            ),
          ),
          this.child,
        ],
      ),
    );
  }
}


class _PurpleBox extends StatelessWidget {
  const _PurpleBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height*0.4,
      color: Colors.blueAccent,
      child: null,
    );
  }
}