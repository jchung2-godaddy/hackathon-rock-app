import 'package:flutter/material.dart';

class FinalScreen extends StatelessWidget {
  final PageController pageController;
  const FinalScreen({Key? key, required this.pageController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/Wavey_Fam.gif'),
              ),
              const SizedBox(height: 25),
              const Text(
                "Awesome, Thanks for Checking.",
                style: TextStyle(
                  fontFamily: 'GD Sherpa',
                  fontSize: 22,
                  color: Color.fromRGBO(17, 17, 17, 1),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Proceed to calling the MYH On-Call Team.",
                style: TextStyle(
                  fontFamily: 'GD Sherpa',
                  fontSize: 18,
                  color: Color.fromRGBO(17, 17, 17, 1),
                ),
              ),
              const SizedBox(height: 75),
              Column(
                children: [
                  TextButton(
                    child: const Text(
                      'Finish',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(17, 17, 17, 1),
                        fontSize: 21,
                      ),
                    ),
                    onPressed: () {
                      pageController.jumpTo(0);
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
                      width: 75.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
