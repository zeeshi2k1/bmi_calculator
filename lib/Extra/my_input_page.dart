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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: genderCard(angleValue: 0, title: "MALE", icon: Icon(Icons.male),),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: genderCard(angleValue: 44.8, title: "FEMALE", icon: Icon(Icons.female),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color(0xFF111428),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                            color: Color(0xFF767883),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "183",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text(
                                "cm",
                                style: TextStyle(
                                  color: Color(0xFF767883),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: cardIDWA(title: "WEIGHT", value: "74"),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: cardIDWA(title: "AGE", value: "19"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFEB1555),
                foregroundColor: Colors.pink[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
              onPressed: () {},
              child: Text(
                "CALCULATE YOUR BMI",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class genderCard extends StatelessWidget {
  genderCard({required this.angleValue, required this.title, required this.icon});

  final double angleValue;
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: <Widget>[
            Transform.rotate(
              angle: angleValue,
              child: icon,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: TextStyle(
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}


class cardIDWA extends StatelessWidget {
  cardIDWA({required this.title, required this.value});

  final String title;
  final String value;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Color(0xFF111428),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF767883),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
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
        ),
      ),
    );
  }
}