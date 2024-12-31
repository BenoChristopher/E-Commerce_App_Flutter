import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/mydrawer.dart';
import '../components/producttile.dart';
import '../models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shop Page',
          style: TextStyle(fontSize: 20.0),
        ),
        // leading: Icon(Icons.menu),
        elevation: 0,
        //foregroundColor: Theme.of(context).colorScheme.surface,
        //backgroundColor: Colors.transparent,
      ),
      drawer: const MyDrawer(),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            'Feature Products',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        SizedBox(
          height: 550,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductTile(product: product);
              }),
        ),
      ]),
    );
  }
}
