import 'package:flutter/material.dart';
import 'package:module7_assignment/cart_page.dart';

class Product {
  final String name;
  final double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  ProductListState createState() => ProductListState();
}

class ProductListState extends State<ProductList> {
  List<Product> products = [
    Product('Product 1', 10.0, 0),
    Product('Product 2', 15.0, 0),
    Product('Product 3', 20.0, 0),
    Product('Product 4', 20.0, 0),
    Product('Product 5', 20.0, 0),
    Product('Product 6', 20.0, 0),
    Product('Product 7', 20.0, 0),
    Product('Product 8', 20.0, 0),
    Product('Product 9', 20.0, 0),
    Product('Product 10', 20.0, 0),
    Product('Product 11', 20.0, 0),
    Product('Product 12', 20.0, 0),
    Product('Product 13', 20.0, 0),
    Product('Product 14', 20.0, 0),
  ];

  void buyProduct(Product product) {
    setState(() {
      product.quantity++;
      if (product.quantity == 5) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Congratulations!'),
              content: Text('You\'ve bought 5 ${product.name}!'),
              actions: [
                TextButton(
                  child: const Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        centerTitle: true,
      ),





      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          Product product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Counter: ${product.quantity}'),
                SizedBox(
                  height: 30,
                  width: 100,
                  child: ElevatedButton(
                    child: const Text('Buy Now'),
                    onPressed: () {
                      buyProduct(product);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),



      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(products: products),
            ),
          );
        },
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}