import 'package:flutter/material.dart';
import 'package:login_tp07/models/models.dart';
import 'package:login_tp07/screens/screens.dart';
import 'package:login_tp07/services/services.dart';
import 'package:login_tp07/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final authService = Provider.of<AuthService>(context, listen: false);
    final productService = Provider.of<ProductService>(context);

    if (productService.isLoading) return LoadingScreen();

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
      body: ListView.builder(
        itemCount: productService.productos.length,
        itemBuilder: (
          BuildContext context, int index)=> GestureDetector(
            onTap: () {
              productService.selectedProduct = productService.productos[index].copy();
              Navigator.pushNamed(context, 'product');
            },
          child: ProductCard(producto: productService.productos[index],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          productService.selectedProduct = new Productos(available: false, name: '', price: 0);
          Navigator.pushNamed(context, 'product');
        },
      ),
    );
  }
}