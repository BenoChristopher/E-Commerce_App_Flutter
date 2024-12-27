import 'package:flutter/material.dart';

import '../components/mybutton.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Minimal Shop',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Premium Quality Products',
              style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary, fontSize: 15),
            ),
            SizedBox(
              height: 80,
            ),
            MyButton(onTap: () => Navigator.pushNamed(context, '/shoppage'))
          ],
        ),
      ),
    );
  }
}
