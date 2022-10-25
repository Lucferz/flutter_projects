import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:login_tp07/models/models.dart';
import 'package:http/http.dart' as http;

class ProductService extends ChangeNotifier{
  final String _baseUrl = 'appmovil-8vo-is-default-rtdb.firebaseio.com';
  final List<Productos> productos = [];

  late Productos selectedProduct;

  bool isLoading = true;
  bool isSaving = false;
  ProductService(){
    this.loadProductos();
  }

  Future <List<Productos>> loadProductos() async{

    this.isLoading = true;
    notifyListeners();

    final url = Uri.https(_baseUrl,'productos.json');

    final resp = await http.get(url);

    final Map<String, dynamic> productsMap = json.decode(resp.body);

    productsMap.forEach((key, value) {
      final tempProd = Productos.fromMap(value);
      tempProd.id=key;
      this.productos.add(tempProd);
    });

    this.isLoading = false;
    notifyListeners();
    print(this.productos[0].name);
    return this.productos;
  }

  Future saveOrCreateProduct(Productos prod) async {
    isSaving = true;
    notifyListeners();
    if(prod.id == null){
      //crear
      await this.createProducto(prod);
    }else{
      //actualizar
      await this.updateProducto(prod);
    }

    isSaving = false;
    notifyListeners();
  }

  Future<String> updateProducto ( Productos prod) async {
    final url = Uri.https(_baseUrl,'productos/${prod.id}.json');

    final resp = await http.put(url, body: prod.toJson());

    final decodeData = json.decode(resp.body);

    final index = this.productos.indexWhere((element)=>element.id == prod.id);
    this.productos[index] = prod;

    return prod.id!;
  }

  Future<String> createProducto( Productos prod) async{

    final url = Uri.https(_baseUrl,'productos.json');

    final resp = await http.post(url, body: prod.toJson());

    final decodeData = json.decode(resp.body);

    prod.id = decodeData['name'];

    this.productos.add(prod);

    return prod.id!;
  }
}