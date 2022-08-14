import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.greenAccent.shade100,
      appBar: AppBar(
        title: const Center(
          child: Text('Answering Ball'),
        ),
        backgroundColor: Colors.green,
      ),
      body: const BallApp(),
    ),
  ));
}

class BallApp extends StatefulWidget {
  const BallApp({Key? key}) : super(key: key);

  @override
  State<BallApp> createState() => _BallAppState();
}

class _BallAppState extends State<BallApp> {
  int ballNum = 1;

  void changeNum() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            'Ask yourself a decision based question and tap the ball.',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Colors.green[900],
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        TextButton(
            onPressed: () {
              changeNum();
            },
            child: Image.asset('images/ball$ballNum.png')),
      ],
    );
  }
}
