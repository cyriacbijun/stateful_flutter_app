import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonPressed = 1,
      rightButtonPressed = 1;
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                int randomNumber = random.nextInt(6) + 1;
                if(randomNumber == leftButtonPressed){
                  randomNumber = random.nextInt(6) + 1;
                }
                setState(() {
                  leftButtonPressed = randomNumber;
                });
              },
              child: Image.asset('images/dice$leftButtonPressed.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                int randomNumber = random.nextInt(6) + 1;
                if(randomNumber == rightButtonPressed){
                  randomNumber = random.nextInt(6) + 1;
                }
                setState(() {
                  rightButtonPressed = randomNumber;
                });
              },
              child: Image.asset('images/dice$rightButtonPressed.png'),
            ),
          ),
        ],
      ),
    );
  }
}
