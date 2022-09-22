import 'package:flutter/material.dart';
import 'package:rock/model/product_info.dart';
import 'package:rock/widgets/product_card.dart';

class ProductSelectionScreen extends StatelessWidget {
  const ProductSelectionScreen({Key? key}) : super(key: key);

  static final List<Product> _products = [
    Product('Plesk', 'Next Gen Windows', const Color.fromARGB(255, 107, 66, 66),
        '#plesk', '@astrutzenberg'),
    Product(
        "Managed WordPress",
        'Managed WordPress 2.0/AWS/Prime',
        const Color.fromARGB(255, 0, 125, 227),
        '#managed-wordpress-1',
        '@fjarret'),
    Product(
        "VPS4",
        'VPS3/DED3/VPS4/DED4',
        const Color.fromARGB(255, 202, 21, 112),
        '#vps4-ded4-public',
        '@mrichards'),
    Product("cPanel / Business Hosting", 'Next Gen Linux',
        const Color.fromARGB(255, 160, 78, 24), '#cpanel', '@smcelroy'),
    Product("WHM", 'Web Host Manager', const Color.fromARGB(255, 58, 49, 239),
        '#cpanel', '@smcelroy'),
    Product("Product Not Shown?", 'All Other Products',
        const Color.fromARGB(255, 0, 0, 0), '', ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Which Product is Failing?",
                  style: TextStyle(
                    fontFamily: 'GD Sherpa',
                    fontSize: 22,
                    color: Color.fromRGBO(17, 17, 17, 1),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.only(top: 15.0),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 4.5 / 5,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: _products.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return ProductCard(product: _products[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
