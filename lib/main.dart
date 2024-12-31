import 'package:e_commerce_app/pages/shoppage.dart';
import 'package:e_commerce_app/themes/lightmode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/shop.dart';
import 'pages/cartpage.dart';
import 'pages/intropage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightmode,
      routes: {
        '/intropage': (context) => const IntroPage(),
        '/shoppage': (context) => const ShopPage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
