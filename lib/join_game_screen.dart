import 'package:flutter/material.dart';

class JoinGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                maxLength: 10,
                decoration: InputDecoration(hintText: 'Game Id'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    color: Colors.green[800],
                    onPressed: () {},
                    child: Text('Join Game'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white70)),
                  ),
                  RaisedButton(
                    color: Colors.blueAccent,
                    onPressed: () {},
                    child: Text('Create Game'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.white70)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
