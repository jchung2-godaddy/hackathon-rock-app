import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

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
        child: Center(
          child: Column(
            children: const [
              Image(
                image: AssetImage('assets/GD_GUIDES_RGB_REVERSE_NO_MARK.png'),
              ),
              Text(
                'Route On Call Knowledge s',
                style: TextStyle(
                  fontFamily: 'GD Sherpa',
                  fontSize: 22,
                  color: Color.fromRGBO(252, 252, 252, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
