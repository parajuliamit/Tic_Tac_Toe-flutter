import 'package:flutter/material.dart';
import 'result.dart';
import 'my_homepage.dart';

class ClickableBox extends StatefulWidget {
  final int x;
  final int y;

  ClickableBox(this.x, this.y);

  @override
  _ClickableBoxState createState() => _ClickableBoxState();
}

class _ClickableBoxState extends State<ClickableBox> {
  Icon icon;
  bool equal3(String a, String b, String c) {
    if (a == b && b == c && a != '') {
      return true;
    }
    return false;
  }

  void navigateResultPage(String result) {
    Future.delayed(const Duration(milliseconds: 300), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return Result(result);
        }),
      );
    });
  }

  void checkWinner() {
    String result;
    //horizontal
    for (int i = 0; i < 3; i++) {
      if (equal3(MyHomePage.grid[i][0], MyHomePage.grid[i][1],
          MyHomePage.grid[i][2])) {
        result = MyHomePage.grid[i][0] + ' Wins!!';
        navigateResultPage(result);
      }
    }
    //vertical
    for (int i = 0; i < 3; i++) {
      if (equal3(MyHomePage.grid[0][i], MyHomePage.grid[1][i],
          MyHomePage.grid[2][i])) {
        result = MyHomePage.grid[0][i] + ' Wins!!';
        navigateResultPage(result);
      }
    }
    //diagonal
    if (equal3(
        MyHomePage.grid[0][0], MyHomePage.grid[1][1], MyHomePage.grid[2][2])) {
      result = MyHomePage.grid[0][0] + ' Wins!!';
      navigateResultPage(result);
    }
    if (equal3(
        MyHomePage.grid[0][2], MyHomePage.grid[1][1], MyHomePage.grid[2][0])) {
      result = MyHomePage.grid[2][0] + ' Wins!!';
      navigateResultPage(result);
    }

    if (MyHomePage.available == 0) {
      result = 'Draw!!';
      navigateResultPage(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          if (icon == null) {
            setState(() {
              if (MyHomePage.turn) {
                icon = Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 60,
                );
                MyHomePage.grid[widget.x][widget.y] = 'X';
                MyHomePage.available--;
              } else {
                icon = Icon(
                  Icons.radio_button_unchecked,
                  size: 50,
                  color: Colors.black,
                );
                MyHomePage.grid[widget.x][widget.y] = 'O';
                MyHomePage.available--;
              }
              MyHomePage.turn = !MyHomePage.turn;
            });
            checkWinner();
          }
        },
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.black)),
          child: icon == null ? null : icon,
        ),
      ),
    );
  }
}
