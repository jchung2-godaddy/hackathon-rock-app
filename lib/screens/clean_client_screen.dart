import 'package:flutter/material.dart';

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
              "Clean up your client?",
              style: TextStyle(
                fontFamily: 'GD Sherpa',
                fontSize: 22,
                color: Color.fromRGBO(17, 17, 17, 1),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Clear you cache and cookies and try again.\nAdditionally, try a different browser.",
                style: TextStyle(
                  fontFamily: 'GD Sherpa',
                  fontSize: 18,
                  color: Color.fromRGBO(17, 17, 17, 1),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    TextButton(
                      child: const Text(
                        'Confirm',
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
