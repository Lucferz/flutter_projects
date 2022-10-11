import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      //height: 300,
      decoration: _createCardShape(),
      child: this.child,
    );
  }

  BoxDecoration _createCardShape() {
    return BoxDecoration(
      color: Colors.amber[300],
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 15,
          offset: Offset(0, 5)
        )
      ]
    );
  }
}