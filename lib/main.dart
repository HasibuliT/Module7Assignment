import 'package:flutter/material.dart';
import 'package:module7_assignment/product_list.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Module 7 Assignment',
      debugShowCheckedModeBanner: false,
      home: ProductList(),
    );
  }
}