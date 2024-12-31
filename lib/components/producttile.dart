import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';
import '../models/shop.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({super.key, required this.product});

// add to cart button pressed
  void addToCart(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Add item to the cart?"),
              actions: [
                MaterialButton(
                    child: Text('No'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                MaterialButton(
                    child: Text('Yes'),
                    onPressed: () {
                      // add item to the cart

                      context.read<Shop>().addToCart(product);
                      Navigator.pop(context);
                    })
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Image.asset(''),
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    padding: EdgeInsets.all(25),
                    //width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Icon(Icons.favorite)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                product.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(product.description),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.amount.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Theme.of(context).colorScheme.secondary),
                child: IconButton(
                    onPressed: () => addToCart(context),
                    icon: Icon(
                      Icons.add,
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
