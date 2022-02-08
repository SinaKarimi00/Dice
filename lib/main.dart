import 'package:flutter/material.dart';

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

class Dice extends StatelessWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Image.asset("images/dice1.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Image.asset("images/dice2.png"),
            ),
          )
        ],
      ),
    );
  }
}
