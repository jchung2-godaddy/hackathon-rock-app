import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  final PageController pageController;
  const IntroScreen({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/GD_GUIDES_RGB_REVERSE_NO_MARK.png'),
            ),
            const Text(
              'Route On Call Knowledge s',
              style: TextStyle(
                fontFamily: 'GD Sherpa',
                fontSize: 22,
                color: Color.fromRGBO(252, 252, 252, 1),
              ),
            ),
            const SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {
                pageController.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeOutSine);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(25, 118, 210, 1),
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 10.0),
                shape: const StadiumBorder(),
              ),
              child: const Text(
                "Start",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
