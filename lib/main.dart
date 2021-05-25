import 'package:flutter/material.dart';
import 'package:onlineshopping/screen/categoryScreen.dart';
import 'package:onlineshopping/screen/loginScreen.dart';
import 'package:onlineshopping/screen/homeScreen.dart';
import 'package:onlineshopping/screen/quantityScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shopping',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
