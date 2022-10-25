import 'package:flutter/material.dart';
import 'package:login_tp07/models/models.dart';

class ProductFormProvider extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  Productos product;

  ProductFormProvider(this.product);

  bool isValidForm(){
    return formKey.currentState?.validate()??false;
  }

  updateAvailability(bool value){
    this.product.available = value;
    notifyListeners();
  }
}