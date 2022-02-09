import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red.shade900,
          appBar: AppBar(
            backgroundColor: Colors.red.shade800,
            title: Text("Dice"),
          ),
          body: Dice(),
        ),
      ),
    ));

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int lNumber = 2;
  int rNumber = 2;
  void RandomNumber() {
    setState(() {
      lNumber = Random().nextInt(6) + 1;
      rNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                RandomNumber();
              },
              child: Image.asset("images/dice$lNumber.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                RandomNumber();
              },
              child: Image.asset("images/dice$rNumber.png"),
            ),
          )
        ],
      ),
    );
  }
}
