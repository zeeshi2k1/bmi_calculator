import 'package:flutter/material.dart';
import 'constants.dart';

class cardInDe extends StatelessWidget {

  cardInDe({required this.title, required this.value});

  final String title;
  int value;

  void decrement(){
    value = value - 1;
  }

  void increment(){
    value = value + 1;
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: kTitleStyle,
        ),
        Text(
          value.toString(),
          style: kValueStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              child: FloatingActionButton(
                onPressed: decrement,
                child: Icon(
                  Icons.remove,
                  color: Color(0xFFAEAFB5),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 40,
              width: 40,
              child: FloatingActionButton(
                onPressed: increment,
                child: Icon(
                  Icons.add,
                  color: Color(0xFFAEAFB5),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

