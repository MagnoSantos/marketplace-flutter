import 'package:flutter/material.dart';
import 'package:marketplace/pages/cart.page.dart';
import 'package:marketplace/pages/login.page.dart';
import 'package:marketplace/styles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: aplicationTheme(),
      home: CartPage(),
    );
  }
}
