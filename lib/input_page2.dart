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
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(hexColor: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReuseableCard(hexColor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: ReuseableCard(hexColor: Color(0xFF111428)),
          ),
          Expanded(
            flex: 7,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(hexColor: Color(0xFF111428)),
                ),
                Expanded(
                  child: ReuseableCard(hexColor: Color(0xFF111428)),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 25),
            height: 50,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.hexColor});

  final Color hexColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: hexColor,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
