import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {

  final  String? url;

  const ProductImage({super.key, this.url});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10
      ),
      child: Container(
        decoration: _buildBoxDecorationImage(),
        width: double.infinity,
        height: 450,
        child: Opacity(
          opacity: 0.9,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45),
              topRight: Radius.circular(45),
            ),
            child: this.url == null?
            Image(
              image: AssetImage('assets/no-image.png'),
              fit: BoxFit.cover,
            ):
            FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(this.url!),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _buildBoxDecorationImage() => BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(45),
      topRight: Radius.circular(45),
    ),
    boxShadow:[ 
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        blurRadius: 10,
        offset: Offset(0, 5)
      ),
    ]
  );
}