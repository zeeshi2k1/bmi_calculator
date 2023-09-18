import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Center(
        child: Text('BMI CALCULATOR',
        style: TextStyle(
        fontSize: 15,
    ),
    ),
    ),
    ),
    body: Column(
      children: <Widget>[
        Expanded(child: Row(
          children: <Widget>[
            Expanded(child: null),
            Expanded(child: null),
          ],
        ),),
        Expanded(child: null),
        Expanded(child: Row(
          children: <Widget>[
            Expanded(child: null),
            Expanded(child: null),
          ],
        ),),
      ],
    ),
    );
  }
}