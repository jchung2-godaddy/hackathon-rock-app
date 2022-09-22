import 'package:flutter/material.dart';
import 'package:rock/model/Product.dart';

class ProductSelectionSelectedScreen extends StatelessWidget {
  final Product product;
  const ProductSelectionSelectedScreen({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: product.name,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    color: product.color,
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      Positioned(
                        bottom: 0,
                        child: Text(
                          product.name,
                          style: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: "GD Sherpa",
                            fontSize: 32,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Slack Channel:',
                        style: TextStyle(
                          color: Color.fromRGBO(17, 17, 17, 1),
                          fontFamily: "GD Sherpa",
                          fontSize: 21,
                        ),
                      ),
                      Text(
                        product.slackChannel,
                        style: const TextStyle(
                          color: Color.fromRGBO(17, 17, 17, 1),
                          fontFamily: "GD Sherpa",
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.pop(context, true);
              },
              child: const Text(
                'Back',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: "GD Sherpa",
                  fontSize: 21,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
