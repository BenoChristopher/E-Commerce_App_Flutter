import 'package:e_commerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> shop = [
    Product(
        name: "Jordaan Gucci",
        amount: 200.0,
        description:
            'Sneakers Skate shoe Child, Children shoes, fashion, outdoor Shoe, female Shoes ',
        imagepath: 'asset/pngwing.com.png'),
    Product(
        name: "Rolex Submariner",
        amount: 900.0,
        description:
            'Round black Rolex analog watch with bracelet, Rolex Submariner Rolex Daytona Rolex Datejust Rolex GMT Master II, Black male watch Rolex watch, black Hair, watch Accessory,',
        imagepath: 'asset/pngwing.co).png'),
    Product(
        name: "Black polo shirt",
        amount: 150.0,
        description:
            'T-shirt Polo shirt Clothing Sleeve, Black T Shirt, black crew-neck T-shirt, tshirt, fashion, cloth ',
        imagepath: 'asset/pngwing.com ).png'),
    Product(
        name: " Microsoft Mouse ",
        amount: 350.0,
        description:
            'Computer mouse Computer keyboard Gamer Mouse Mats, Computer Mouse, game, electronics, computer Keyboard ',
        imagepath: 'asset/pngwing.com (3).png'),
    Product(
        name: "Destiny 2 ",
        amount: 950.0,
        description:
            'PlayStation 2 Joystick PlayStation 4 PlayStation 3, Playstation, electronics, playStation 4, game Controllers',
        imagepath: 'asset/pngwing.com (5).png')
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
