import 'package:flutter/material.dart';
import 'package:rock/screens/product_selection_screen.dart';

class CleanClientScreen extends StatelessWidget {
  final PageController pageController;
  const CleanClientScreen({Key? key, required this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/SEO_highlite.gif'),
            ),
            const Text(
              "Clean up your client",
              style: TextStyle(
                fontFamily: 'GD Sherpa',
                fontSize: 22,
                color: Color.fromRGBO(17, 17, 17, 1),
              ),
            ),
            const SizedBox(height: 75),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    TextButton(
                      child: const Text(
                        'Yes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(17, 17, 17, 1),
                          fontSize: 21,
                        ),
                      ),
                      onPressed: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeOut);
                      },
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(25, 118, 210, 1),
                            Color.fromRGBO(116, 75, 196, 1),
                          ],
                        ),
                      ),
                      child: const SizedBox(
                        height: 5.0,
                        width: 30.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 50.0),
                Column(
                  children: [
                    TextButton(
                      child: const Text(
                        'No',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(17, 17, 17, 1),
                          fontSize: 21,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProductSelectionScreen()),
                        );
                      },
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(25, 118, 210, 1),
                            Color.fromRGBO(116, 75, 196, 1),
                          ],
                        ),
                      ),
                      child: const SizedBox(
                        height: 5.0,
                        width: 30.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 50.0),
                Column(
                  children: [
                    TextButton(
                      child: const Text(
                        'Not Sure',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(17, 17, 17, 1),
                          fontSize: 21,
                        ),
                      ),
                      onPressed: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeOut);
                      },
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(25, 118, 210, 1),
                            Color.fromRGBO(116, 75, 196, 1),
                          ],
                        ),
                      ),
                      child: const SizedBox(
                        height: 5.0,
                        width: 80.0,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
