import 'package:flutter/material.dart';
import 'constants.dart';
import 'variables.dart';

class cardInDe extends StatefulWidget {

  cardInDe({required this.title, required this.value});

  final String title;
  int value;

  @override
  State<cardInDe> createState() => _cardInDeState(title: title, value: value);
}

class _cardInDeState extends State<cardInDe> {

  _cardInDeState({required this.title, required this.value});

  final String title;
  int value;

  void replaceValues(){
    if (title == "WEIGHT"){
      weight = value;
    }
    else if (title == "AGE"){
      age = value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                onPressed: () {
                  setState(() {
                    if (value > 0) {
                      value--;
                      replaceValues();
                    }
                  });
                },
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
                onPressed: () {
                  setState(() {
                    value++;
                    replaceValues();
                  });
                },
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
