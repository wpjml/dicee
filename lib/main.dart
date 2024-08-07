import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;

  void changeDiceFace() {
    setState(() {
      rightdicenumber = Random().nextInt(6) + 1;
      leftdicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
