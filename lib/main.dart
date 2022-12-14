import 'package:flutter/material.dart';
import 'package:rock/screens/checklist_screen.dart';
import 'package:rock/screens/clean_client_screen.dart';
import 'package:rock/screens/console_screen.dart';
import 'package:rock/screens/due_diligence_screen.dart';
import 'package:rock/screens/final_screen.dart';
import 'package:rock/screens/intro_screen.dart';
import 'package:rock/screens/product_screen.dart';
import 'package:rock/widgets/help_button.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoDaddy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'GD Sherpa',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'GoDaddy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final PageController _pageController = PageController();
  final List<Widget> _screens = [
    IntroScreen(pageController: _pageController),
    ProductScreen(pageController: _pageController),
    CleanClientScreen(pageController: _pageController),
    DueDiligenceScreen(pageController: _pageController),
    ConsoleScreen(pageController: _pageController),
    CheckListScreen(pageController: _pageController),
    FinalScreen(pageController: _pageController),
  ];
  final Uri toLaunch =
      Uri(scheme: 'https', host: 'confluence.godaddy.com', path: '/x/2vEFEw');
  double currentPage = 0;

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!;
      });
    });
    super.initState();
  }

  void _getChangedPageAndMoveBar(int page) {
    setState(() {
      currentPage = page.toDouble();
    });
  }

  Future<void> _launchInWebViewWithoutJavaScript(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),
    )) {
      throw 'Could not launch $url';
    }
  }

  Widget circleBar(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive
            ? const Color.fromRGBO(25, 118, 210, 1)
            : const Color.fromRGBO(17, 17, 17, 1),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
  // blue - const Color.fromRGBO(25, 118, 210, 1),
  // black - const Color.fromRGBO(17, 17, 17, 1),
  // purple - const Color.fromRGBO(116, 75, 196, 1),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(25, 118, 210, 1),
                    Color.fromRGBO(116, 75, 196, 1),
                  ],
                ),
              ),
              child: Text(
                'C3 Help for MYH',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.people_rounded),
              title: const Text('Ultimate Org Chart'),
              onTap: () => {
                _launchInWebViewWithoutJavaScript(toLaunch),
              },
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Made by Joon-Sub Chung'),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          PageView.builder(
            // physics: const NeverScrollableScrollPhysics(),
            itemCount: _screens.length,
            onPageChanged: (int page) {
              _getChangedPageAndMoveBar(page);
            },
            controller: _pageController,
            itemBuilder: (ctxt, index) {
              return _screens[index];
            },
          ),
          Positioned(
            top: 45,
            right: 15,
            child: HelpButton(isCurrentPage: currentPage),
          ),
          Visibility(
            visible: currentPage != 0,
            child: Positioned(
              bottom: 0,
              left: 0,
              height: 100,
              width: MediaQuery.of(context)
                  .size
                  .width, // Code to assign full width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 35),
                    child: Row(
                      children: <Widget>[
                        for (int i = 0; i < _screens.length; i++)
                          if (i == currentPage) ...[circleBar(true)] else
                            circleBar(false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
