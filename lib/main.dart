import 'package:flutter/material.dart';
import 'package:kbc_demo/HomeScreen/first.dart';
import 'package:kbc_demo/HomeScreen/home_screen.dart';
import 'package:kbc_demo/HomeScreen/result.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => First(),
        'home': (context) => HomeScreen(),
        'Result': (context) => Result(),
      },
    ),
  );
}
