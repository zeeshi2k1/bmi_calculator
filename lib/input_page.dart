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
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(18, 16, 15, 5),
            child: Row(
              children: <Widget>[
                Container(
                  height: 130,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1F33),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.male,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("MALE",
                        style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 130,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Color(0xFF1D1F33),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.female,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("FEMALE",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              height: 150,
              width: 323,
              decoration: BoxDecoration(
                color: Color(0xFF1D1F33),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
