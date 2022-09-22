import 'package:flutter/material.dart';
import 'package:rock/model/Product.dart';
import 'package:rock/screens/product_selection_selected_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Hero(
        tag: product.name,
        child: Container(
          padding: const EdgeInsets.all(15),
          color: product.color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.name,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: "GD Sherpa",
                  fontSize: 21,
                ),
              ),
              Text(
                product.subtitle,
                style: const TextStyle(
                  color: Color.fromRGBO(255, 255, 255, .8),
                  fontFamily: "GD Sherpa",
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ProductSelectionSelectedScreen(product: product)),
        )
      },
    );
  }
}
