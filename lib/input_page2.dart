import 'package:bmi/input_page.dart';
import 'package:flutter/material.dart';

const genderCardColor = Color(0xFF1D1E33);
const activeCardColor = Color(0xFF111428);
const bottomButtonColor = Color(0xFFEB1555);



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
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(hexColor: genderCardColor),
                ),
                Expanded(
                  child: ReuseableCard(hexColor: genderCardColor),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(hexColor: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(hexColor: activeCardColor),
                ),
                Expanded(
                  child: ReuseableCard(hexColor: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomButtonColor,
            margin: EdgeInsets.only(top: 15),
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
      margin: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: hexColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
