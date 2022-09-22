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
              height: 300,
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
            const SizedBox(height: 25),
            ListTile(
              title: Image(
                image: AssetImage('assets/Network.jpg'),
                height: 150,
              ),
            ),
            ListTile(
              leading: Text('50X'),
              title: Text("Products"),
              subtitle: Text('/api/{PRODUCT}/account/{GUID}'),
              trailing: Icon(Icons.chevron_right_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
