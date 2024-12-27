import "package:flutter/material.dart";

ThemeData lightmode = ThemeData(
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade200,
    primary: Colors.deepPurple,
    secondary: Colors.grey.shade700,
    onPrimary: Colors.white,
    inversePrimary: const Color.fromARGB(255, 115, 67, 210),
  ),
);
