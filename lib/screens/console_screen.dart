import 'package:flutter/material.dart';

class ConsoleScreen extends StatelessWidget {
  final PageController pageController;
  const ConsoleScreen({Key? key, required this.pageController})
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
              image: AssetImage('assets/Sitting_with_laptop_3.gif'),
              height: 275,
            ),
            const Text(
              "What's in the Console?",
              style: TextStyle(
                fontFamily: 'GD Sherpa',
                fontSize: 22,
                color: Color.fromRGBO(17, 17, 17, 1),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Check the Browser's Console for any useful error messaging.",
                style: TextStyle(
                  fontFamily: 'GD Sherpa',
                  fontSize: 18,
                  color: Color.fromRGBO(17, 17, 17, 1),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  const ListTile(
                    title: Image(
                      image: AssetImage('assets/console.jpg'),
                      height: 200,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeOut);
                    },
                    child: const ListTile(
                      title: Text("Undefined Console Error"),
                      subtitle: Text('Cannot read properties of undefined'),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeOut);
                    },
                    child: const ListTile(
                      title: Text("ReferenceError: {VARIABLE}"),
                      subtitle: Text('{VARIABLE} is not defined'),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeOut);
                    },
                    child: const ListTile(
                      title: Text("No Console Errors"),
                      subtitle: Text('Or... errors are not MYH related'),
                      trailing: Icon(Icons.chevron_right_outlined),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
