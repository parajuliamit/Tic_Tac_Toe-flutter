import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'my_homepage.dart';

class Result extends StatelessWidget {
  final String winner;
  Result(this.winner);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
      alignment: Alignment.center,
      width: 300,
      height: 300,
      color: Colors.white70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            winner,
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            color: Colors.blueGrey,
            onPressed: () {
              MyHomePage.reset();
              Phoenix.rebirth(context);
            },
            child: Text('Play Again'),
          )
        ],
      ),
    )));
  }
}
