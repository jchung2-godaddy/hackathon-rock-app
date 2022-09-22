import 'package:flutter/material.dart';
import 'package:rock/model/Product.dart';
import 'package:rock/widgets/product_card.dart';

class ProductSelectionScreen extends StatelessWidget {
  const ProductSelectionScreen({Key? key}) : super(key: key);

  static final List<Product> _products = [
    Product(
      'Plesk',
      const Color.fromARGB(255, 107, 66, 66),
    ),
    Product(
      "VPS4",
      const Color.fromARGB(255, 202, 21, 112),
    ),
    Product(
      "cPanel",
      const Color.fromARGB(255, 160, 78, 24),
    ),
    Product(
      "WHM",
      const Color.fromARGB(255, 58, 49, 239),
    ),
    Product(
      "Managed Wordpress",
      const Color.fromARGB(255, 0, 125, 227),
    ),
    Product(
      "DED",
      const Color.fromARGB(255, 85, 0, 171),
    ),
    Product(
      "Product Not Shown",
      const Color.fromARGB(255, 255, 255, 1),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: _products.length,
              itemBuilder: (BuildContext ctx, index) {
                return ProductCard(product: _products[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}