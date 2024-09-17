import 'package:flutter/material.dart';
import 'package:news_app/widgets/home_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      cardTheme: const CardTheme().copyWith(
        color: const Color.fromARGB(225, 252, 222, 112),
      )
    ),
    home: const HomeScreen(),
  ));
}