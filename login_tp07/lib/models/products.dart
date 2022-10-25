import 'dart:convert';

class Productos {

  Productos({
    required this.available,
    required this.name,
    this.picture,
    required this.price,
    this.id,
  });

  bool available;
  String name;
  String? picture;
  double price;
  String? id;

  factory Productos.fromJson(String str) => Productos.fromMap(json.decode(str));
  String toJson() => json.encode(toMap());

  factory Productos.fromMap(Map<String, dynamic> json) => Productos(
    available: json['available'],
    name: json['name'],
    picture: json['picture'],
    price: json['price'].toDouble(),
  );

  Map <String,dynamic> toMap() => {
      "available": available,
      "name":name,
      "picture": picture,
      "price": price,
  };
   
  Productos copy() => Productos(
    available: this.available, 
    name: this.name, 
    price: this.price,
    picture: this.picture,
    id: this.id,
  );
}