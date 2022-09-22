import 'package:flutter/material.dart';

class ProductSelectionScreen extends StatelessWidget {
  const ProductSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 2,
            children: [
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.brown,
                  child: const Text(
                    "Plesk",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "GD Sherpa",
                      fontSize: 21,
                    ),
                  ),
                ),
                onTap: () => {},
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.redAccent,
                  child: const Text(
                    "VPS4",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "GD Sherpa",
                      fontSize: 21,
                    ),
                  ),
                ),
                onTap: () => {},
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.blueAccent,
                  child: const Text(
                    "cPanel",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "GD Sherpa",
                      fontSize: 21,
                    ),
                  ),
                ),
                onTap: () => {},
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.orange,
                  child: const Text(
                    "WHM",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "GD Sherpa",
                      fontSize: 21,
                    ),
                  ),
                ),
                onTap: () => {},
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.purpleAccent,
                  child: const Text(
                    "Managed Wordpress",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "GD Sherpa",
                      fontSize: 21,
                    ),
                  ),
                ),
                onTap: () => {},
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.teal,
                  child: const Text(
                    "Another Product",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: "GD Sherpa",
                      fontSize: 21,
                    ),
                  ),
                ),
                onTap: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
