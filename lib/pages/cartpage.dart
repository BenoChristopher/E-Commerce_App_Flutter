import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Remove item from the cart?"),
        actions: [
          MaterialButton(
            child: Text('No'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          MaterialButton(
            child: Text('Yes'),
            onPressed: () {
              context.read<Shop>().removeItemFromCart(product);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().usercart;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Cart Page'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    final item = cart[index];
                    return ListTile(
                        title: Text(item.name),
                        subtitle: Text(item.amount.toString()),
                        trailing: IconButton(
                            onPressed: () => removeFromCart(context, item),
                            icon: const Icon(Icons.delete)));
                  }))
        ],
      ),
    );
  }
}
