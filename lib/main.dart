import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
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
  int leftDiceNumber = Random().nextInt(6);
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = 2;
                  print('diceNumber = $leftDiceNumber');
                });

              },
              child: Image.asset('images/dice$leftDiceNumber.png'),

            ),
          ),
          Expanded(
                       child: FlatButton(
              onPressed: (){
                print('Right Button got pressed. ');
              },
              child: Image.asset('images/dice1.png'),
            ),

          ),

        ],
      ),
    );
  }
}

