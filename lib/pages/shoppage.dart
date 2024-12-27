import 'package:flutter/material.dart';

import '../components/mydrawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop Page'),
        // leading: Icon(Icons.menu),
        elevation: 0,
        //foregroundColor: Theme.of(context).colorScheme.surface,
        //backgroundColor: Colors.transparent,
      ),
      drawer: MyDrawer(),
    );
  }
}
