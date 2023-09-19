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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.male,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          child: Column(
                            children: <Widget>[
                              Transform.rotate(
                                angle: 44.8,
                                child: Icon(
                                  Icons.female,
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
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
                      Text("HEIGHT",
                        style: TextStyle(
                          color: Color(0xFF767883),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("183",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text("cm",
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
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF111428),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            children: <Widget>[
                              Text("WEIGHT",
                                style: TextStyle(
                                  color: Color(0xFF767883),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text("74",
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
                                      onPressed: (){},
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
                                      onPressed: (){},
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
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Color(0xFF111428),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Column(
                            children: <Widget>[
                              Text("AGE",
                              style: TextStyle(
                                color: Color(0xFF767883),
                                fontWeight: FontWeight.w500,
                              ),
                              ),
                              Text("19",
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
                                    onPressed: (){},
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
                                      onPressed: (){},
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
                      ),
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
              onPressed: (){},
              child: Text("CALCULATE YOUR BMI",
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