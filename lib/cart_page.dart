import 'package:flutter/material.dart';
import 'package:module7_assignment/product_list.dart';


class CartPage extends StatelessWidget {
  final List<Product> products;

  const CartPage({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    int totalQuantity = products.fold(0, (sum, product) => sum + product.quantity);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Total Products: $totalQuantity'),
      ),
    );
  }
}