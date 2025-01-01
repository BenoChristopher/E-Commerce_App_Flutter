import 'package:e_commerce_app/components/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  void payButtonPressed(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('You want to pay? Plz connect to the backend'),
            ));
  }

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
              child: cart.isEmpty
                  ? Center(child: Text(' Your cart is empty'))
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        final item = cart[index];
                        return ListTile(
                            leading: Image.asset(item.imagepath),
                            title: Text(item.name),
                            subtitle: Text(item.amount.toString()),
                            trailing: IconButton(
                                onPressed: () => removeFromCart(context, item),
                                icon: const Icon(Icons.delete)));
                      })),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MyButton(
              onTap: () => payButtonPressed(context),
            ),
          )
        ],
      ),
    );
  }
}
