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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
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
                            Icon(
                              Icons.female,
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
              Center(
                child: Expanded(
                  child: ElevatedButton(
                    onPressed: () {  },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    ),
                  ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
