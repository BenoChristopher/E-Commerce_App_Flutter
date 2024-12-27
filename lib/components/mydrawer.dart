import 'package:flutter/material.dart';

import 'mylisttile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag_rounded,
                  size: 80,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MyListTile(
                icon: Icons.home,
                text: 'Shop',
                onTap: () => Navigator.pop(context),
              ),
              MyListTile(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushNamed(context, '/cartpage');
                  }),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
                icon: Icons.exit_to_app,
                text: 'Exit',
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/intropage',
                      (route) => false,
                    )),
          ),
        ],
      ),
    );
  }
}
