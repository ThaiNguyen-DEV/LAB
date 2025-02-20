import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Magic8BallPage(),
    );
  }
}

class Magic8BallPage extends StatefulWidget {
  @override
  _Magic8BallPageState createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  final List<String> ballImages = [
    'assets/images/ball1.png',
    'assets/images/ball2.png',
    'assets/images/ball3.png',
    'assets/images/ball4.png',
    'assets/images/ball5.png',
  ];

  String ballImage = 'assets/images/ball1.png';

  void shakeBall() {
    setState(() {
      ballImage = ballImages[Random().nextInt(ballImages.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: GestureDetector(
          onTap: shakeBall,
          child: Image.asset(ballImage, width: 300, height: 300),
        ),
      ),
    );
  }
}