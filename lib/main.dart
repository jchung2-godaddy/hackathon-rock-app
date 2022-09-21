import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoDaddy',
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // blue - const Color.fromRGBO(25, 118, 210, 1),
  // black - const Color.fromRGBO(17, 17, 17, 1),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            children: const [
              Image(
                image: AssetImage('assets/GD_GUIDES_RGB_REVERSE_NO_MARK.png'),
              ),
              Text(
                'Route On Call Knowledge',
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
