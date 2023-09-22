import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'gender_card.dart';

const genderCardColor = Color(0xFF1D1E33);
const cardColor = Color(0xFF111428);
const activeColor = Colors.white;
const inactiveColor = Color(0xFF8D8E98);
const bottomButtonColor = Color(0xFFEB1555);



class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleColor = activeColor;
  Color femaleColor = inactiveColor;

  void updateColor(String gender){
    if (gender == "male") {
      maleColor = activeColor;
      femaleColor = inactiveColor;
    }
    else if (gender == "female") {
      femaleColor = activeColor;
      maleColor = inactiveColor;
    }
  }
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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor("male");
                      });
                    },
                    child: ReuseableCard(
                      hexColor: genderCardColor,
                      childCard: genderCard(
                        angleValue: 0,
                        title: "MALE",
                        icon: Icon(
                            Icons.male,
                            color: maleColor,
                        ),
                        coloring: maleColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor("female");
                      });
                    },
                    child: ReuseableCard(
                      hexColor: genderCardColor,
                      childCard: genderCard(
                        angleValue: 44.8,
                        title: "FEMALE",
                        icon: Icon(
                            Icons.female,
                            color: femaleColor,
                        ),
                        coloring: femaleColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              hexColor: cardColor,
              childCard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    hexColor: cardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: TextStyle(
                            color: Color(0xFF767883),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "74",
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
                ),
                Expanded(
                  child: ReuseableCard(
                    hexColor: cardColor,
                    childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: TextStyle(
                            color: Color(0xFF767883),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "19",
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