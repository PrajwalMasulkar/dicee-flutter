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

class DicePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: (){

                  print('Left button got pressed. ');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),

            ),
          ),
          Expanded(
            flex: 1,

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
