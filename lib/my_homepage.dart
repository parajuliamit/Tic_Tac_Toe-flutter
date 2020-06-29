import 'package:flutter/material.dart';
import 'clickable_box.dart';
import 'dart:math';

class MyHomePage extends StatelessWidget {
  static bool turn = Random().nextBool();
  static List<List<String>> grid = [
    ['', '', ''],
    ['', '', ''],
    ['', '', '']
  ];
  static int available = 9;
  static void reset() {
    turn = Random().nextBool();
    grid = [
      ['', '', ''],
      ['', '', ''],
      ['', '', '']
    ];
    available = 9;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tic Tac Toe',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.5)),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        ClickableBox(0, 0),
                        ClickableBox(0, 1),
                        ClickableBox(0, 2)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        ClickableBox(1, 0),
                        ClickableBox(1, 1),
                        ClickableBox(1, 2)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        ClickableBox(2, 0),
                        ClickableBox(2, 1),
                        ClickableBox(2, 2)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
