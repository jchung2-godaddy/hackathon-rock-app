import 'package:flutter/material.dart';

class DueDiligenceScreen extends StatelessWidget {
  final PageController pageController;
  const DueDiligenceScreen({Key? key, required this.pageController})
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
              image: AssetImage('assets/Customer_focus.gif'),
              height: 250,
            ),
            const Text(
              "Some Due Diligence",
              style: TextStyle(
                fontFamily: 'GD Sherpa',
                fontSize: 22,
                color: Color.fromRGBO(17, 17, 17, 1),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Check the browser's Network Tab* and look for what's failing.",
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
                  ListTile(
                    title: Image(
                      image: AssetImage('assets/Network.jpg'),
                      height: 150,
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 600,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Image(
                                  image: AssetImage('assets/account.jpg'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: const Text(
                                    "A network call to an API is Failing?",
                                    style: TextStyle(
                                      fontFamily: 'GD Sherpa',
                                      fontSize: 22,
                                      color: Color.fromRGBO(17, 17, 17, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          TextButton(
                                            child: const Text(
                                              'Yes',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    17, 17, 17, 1),
                                                fontSize: 21,
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              pageController.animateToPage(4,
                                                  duration: const Duration(
                                                      milliseconds: 250),
                                                  curve: Curves.easeOut);
                                            },
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
                                              width: 30.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          TextButton(
                                            child: const Text(
                                              'No',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    17, 17, 17, 1),
                                                fontSize: 21,
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
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
                                              width: 30.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    leading: Text('50X'),
                    title: Text("Products"),
                    subtitle: Text('/api/{PRODUCT}/account/{GUID}'),
                    trailing: Icon(Icons.chevron_right_outlined),
                  ),
                  ListTile(
                    onTap: () {
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 600,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Image(
                                  image: AssetImage('assets/appconfig.jpg'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: const Text(
                                    "A network call to an AppConfig is Failing?",
                                    style: TextStyle(
                                      fontFamily: 'GD Sherpa',
                                      fontSize: 22,
                                      color: Color.fromRGBO(17, 17, 17, 1),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          TextButton(
                                            child: const Text(
                                              'Yes',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    17, 17, 17, 1),
                                                fontSize: 21,
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              pageController.animateToPage(4,
                                                  duration: const Duration(
                                                      milliseconds: 250),
                                                  curve: Curves.easeOut);
                                            },
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
                                              width: 30.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          TextButton(
                                            child: const Text(
                                              'No',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    17, 17, 17, 1),
                                                fontSize: 21,
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
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
                                              width: 30.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    leading: Text('50X'),
                    title: Text("App Config"),
                    subtitle: Text('/feature/{PRODUCT}-{APPCONFIG_NAME}'),
                    trailing: Icon(Icons.chevron_right_outlined),
                  ),
                  ListTile(
                    onTap: () {
                      pageController.nextPage(
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeOut);
                    },
                    leading: Text('50X'),
                    title: Text("No Product Network Issues"),
                    subtitle: Text('Accounts are coming in fine.'),
                    trailing: Icon(Icons.chevron_right_outlined),
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
