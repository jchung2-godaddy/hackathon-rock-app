import 'package:flutter/material.dart';
import 'package:rock/screens/product_selection_screen.dart';

class ProductScreen extends StatelessWidget {
  final PageController pageController;
  const ProductScreen({Key? key, required this.pageController})
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
              image: AssetImage('assets/Illustration_Finger_Puppet.gif'),
            ),
            const Text(
              'Are multiple Products* affected?',
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
                        '*Not Sure',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(17, 17, 17, 1),
                          fontSize: 21,
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.of(context).size.height - 200,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Text(
                                      'MYH Products',
                                      style: TextStyle(
                                        color: Color.fromRGBO(17, 17, 17, 1),
                                        fontFamily: "GD Sherpa",
                                        fontSize: 32,
                                      ),
                                    ),
                                    const Text(
                                      'The MYH products are the following:',
                                      style: TextStyle(
                                        color: Color.fromRGBO(17, 17, 17, 1),
                                        fontFamily: "GD Sherpa",
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    SizedBox(
                                      height: 300,
                                      child: ListView(
                                        children: const [
                                          ListTile(
                                            title: Text(
                                              'cPanel',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    17, 17, 17, 1),
                                                fontFamily: "GD Sherpa",
                                                fontSize: 18,
                                              ),
                                            ),
                                            subtitle: Text('cPanel, WHM'),
                                          ),
                                          ListTile(
                                            title: Text(
                                              'Plesk',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    17, 17, 17, 1),
                                                fontFamily: "GD Sherpa",
                                                fontSize: 18,
                                              ),
                                            ),
                                            subtitle: Text('Plesk'),
                                          ),
                                          ListTile(
                                            title: Text(
                                              'Managed Wordpress',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    17, 17, 17, 1),
                                                fontFamily: "GD Sherpa",
                                                fontSize: 18,
                                              ),
                                            ),
                                            subtitle: Text('Managed WordPress'),
                                          ),
                                          ListTile(
                                            title: Text(
                                              'VPS4',
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    17, 17, 17, 1),
                                                fontFamily: "GD Sherpa",
                                                fontSize: 18,
                                              ),
                                            ),
                                            subtitle: Text('VPS, Ded'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            TextButton(
                                              child: const Text(
                                                'Got It',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      17, 17, 17, 1),
                                                  fontSize: 21,
                                                ),
                                              ),
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                            ),
                                            Container(
                                              decoration: const BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color.fromRGBO(
                                                        25, 118, 210, 1),
                                                    Color.fromRGBO(
                                                        116, 75, 196, 1),
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
                                  ],
                                ),
                              ),
                            );
                          },
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
