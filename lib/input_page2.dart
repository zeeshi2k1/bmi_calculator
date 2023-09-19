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
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
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
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 3,
              child: ReuseableCard(hexColor: Color(0xFF111428)),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              flex: 3,
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
          ],
        ),
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
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: hexColor,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
