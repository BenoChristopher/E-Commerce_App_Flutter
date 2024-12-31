import 'package:e_commerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> shop = [
    Product(
      name: "PRODUCT 1",
      amount: 20.0,
      description: 'Quality product shoe',
      // imagepath: imagepath
    ),
    Product(
      name: "PRODUCT 1",
      amount: 20.0,
      description: 'Quality product shoe',
      // imagepath: imagepath
    ),
    Product(
      name: "PRODUCT 1",
      amount: 20.0,
      description: 'Quality product shoe',
      // imagepath: imagepath
    ),
    Product(
      name: "PRODUCT 1",
      amount: 20.0,
      description: 'Quality product shoe',
      // imagepath: imagepath
    ),
    Product(
      name: "PRODUCT 1",
      amount: 20.0,
      description: 'Quality product shoe',
      // imagepath: imagepath
    )
  ];

  //user cart
  final List<Product> _cart = [];

  //get Product list
  List<Product> get getshopproduct => shop;

  //get userCart
  List<Product> get usercart => _cart;

  //add items to cart
  void addToCart(Product item) {
    usercart.add(item);
    notifyListeners();

    //remove items from cart
  }

  void removeItemFromCart(Product item) {
    usercart.remove(item);
    notifyListeners();
  }
}
