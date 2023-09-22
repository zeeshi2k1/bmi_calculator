import 'package:flutter/material.dart';
import 'constants.dart';

class cardInDe extends StatelessWidget {

  cardInDe({required this.title, required this.value});

  final String title;
  final String value;


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
          value,
          style: kValueStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 40,
              width: 40,
              child: FloatingActionButton(
                onPressed: () {},
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
                onPressed: () {},
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
