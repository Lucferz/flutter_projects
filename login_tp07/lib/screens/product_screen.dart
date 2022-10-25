import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_tp07/providers/product_form_provider.dart';
import 'package:login_tp07/services/services.dart';
import 'package:login_tp07/ui/ui.dart';
import 'package:login_tp07/widgets/widgets.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productService = Provider.of<ProductService>(context);

    return ChangeNotifierProvider(
      create: (_)=>ProductFormProvider(productService.selectedProduct),
      child: _ProductScreenBody(productService: productService),  
    );
  }
}

class _ProductScreenBody extends StatelessWidget {
  const _ProductScreenBody({
    super.key,
    required this.productService,
  });

  final ProductService productService;

  @override
  Widget build(BuildContext context) {

    final prodForm = Provider.of<ProductFormProvider>(context);
    final prod = prodForm.product;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductImage(url: productService.selectedProduct.picture,),
            Positioned(
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(), 
                icon: Icon(
                  Icons.arrow_back,
                  size: 40,
                  //color: Colors.white,
                ),
              ),
            ),
            _ProductForm()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.save_alt_outlined,
        ),
        onPressed: () async {
          if(!prodForm.isValidForm()) return;
          await productService.saveOrCreateProduct(prodForm.product);
          Navigator.pushNamed(context, 'home');
        },
      ),
    );
  }
}

class _ProductForm extends StatelessWidget {
  const _ProductForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final productForm = Provider.of<ProductFormProvider>(context);
    final producto = productForm.product;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: _boxDecorationProductForm(),
        child: Form(
          key: productForm.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextFormField(
                initialValue: producto.name,
                onChanged: (value) => producto.name = value,
                validator: ((value) {
                  if (value == null || value.length<1){
                    return 'El nombre es Obligatorio';
                  }
                }),
                decoration: InputDecorations.authInputDecoration(hintText: 'Nombre del Producto', labelText: 'Nombre'),
              ),
              SizedBox(height: 30,),
              TextFormField(
                initialValue: producto.price.toString(),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
                ],
                onChanged: (value) {
                  if(double.tryParse(value) == null){
                    producto.price = 0;
                  }else{
                    producto.price = double.parse(value);
                  }
                },
                decoration: InputDecorations.authInputDecoration(hintText: '\$150', labelText: 'Precio'),
              ),
              SizedBox(height: 30,),
              SwitchListTile.adaptive(
                value: producto.available , 
                title: Text('Disponible'), 
                activeColor: Colors.indigo,
                onChanged: productForm.updateAvailability,
              ),
              SizedBox(height: 10,),
            ]
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecorationProductForm() => BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(25),
      bottomLeft: Radius.circular(25),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        offset: Offset(0, 5),
        blurRadius: 5,
      )
    ]
  );
}

