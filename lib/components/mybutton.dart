import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  void Function()? onTap;
  MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12)),
        child: Icon(
          Icons.arrow_forward_rounded,
          size: 30,
          //color: Colors.white,
        ),
      ),
    );
  }
}
