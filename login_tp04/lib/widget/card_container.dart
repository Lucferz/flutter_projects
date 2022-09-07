import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  // const CardContainer({Key? key}) : super(key: key);
  final Widget child;

  const CardContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        height: 300,
        decoration: _createCardShape(),
        child: this.child,
      ),
    );
  }

  BoxDecoration _createCardShape() => BoxDecoration(
    color: Colors.grey[500],
    borderRadius: BorderRadius.circular(25),
    boxShadow: [
      BoxShadow(
        color: Colors.black,
        blurRadius: 15,
        offset: Offset(0, 5),
      )
    ]
  );
}