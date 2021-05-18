import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.grey[900],
        ),
        body: DicePage(), // gives a StatelessWidget >> see DicePage class
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumberOne = 5; // creates the variable for the left dice
  int diceNumberTwo = 1;
  int diceNumberThree = 1;
  int diceNumberFour = 2;
  int diceNumberFive = 3; // creates the variable for the right dice

  void changeDiceFace() {
    setState(() {
      diceNumberOne = Random().nextInt(6) + 1;
      diceNumberTwo = Random().nextInt(6) + 1;
      diceNumberThree = Random().nextInt(6) + 1;
      diceNumberFour = Random().nextInt(6) + 1;
      diceNumberFive =
          Random().nextInt(6) + 1; // changes the left dice variable value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$diceNumberOne.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$diceNumberTwo.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$diceNumberThree.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$diceNumberFour.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$diceNumberFive.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
