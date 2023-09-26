import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'gender_card.dart';
import 'increase_decrease_card.dart';
import 'constants.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender genderInput = Gender.male;

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
                        genderInput = Gender.male;
                      });
                    },
                    child: ReuseableCard(
                      hexColor: kGenderCardColor,
                      childCard: genderCard(
                        angleValue: 0,
                        title: "MALE",
                        icon: Icon(
                            Icons.male,
                            color: genderInput == Gender.male ? kActiveColor : kInactiveColor,
                        ),
                        coloring: genderInput == Gender.male ? kActiveColor : kInactiveColor,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        genderInput = Gender.female;
                      });
                    },
                    child: ReuseableCard(
                      hexColor: kGenderCardColor,
                      childCard: genderCard(
                        angleValue: 44.8,
                        title: "FEMALE",
                        icon: Icon(
                            Icons.female,
                            color: genderInput == Gender.female ? kActiveColor : kInactiveColor,
                        ),
                        coloring: genderInput == Gender.female ? kActiveColor : kInactiveColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              hexColor: kCardColor,
              childCard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kTitleStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kValueStyle,
                      ),
                      Text(
                        "cm",
                        style: kTitleStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: kTrackHeight,
                      activeTrackColor: kActiveColor,
                      inactiveTrackColor: kInactiveColor,
                      thumbColor: kPinkColor,
                      overlayColor: kPinkColor.withOpacity(kOverlayOpacity),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: kOverlayRadius),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: kMin,
                        max: kMax,
                        label: '$height',
                        onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                        },
                    ),
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
                    hexColor: kCardColor,
                    childCard: cardInDe(title: "WEIGHT", value: weight),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    hexColor: kCardColor,
                    childCard: cardInDe(title: "AGE", value: age),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                double heightmeter = height/100;
                bmi = weight / (heightmeter * heightmeter);
                Navigator.pushNamed(context, '/result');
              });
            },
            child: Container(
              color: kPinkColor,
              margin: EdgeInsets.only(top: 15),
              height: 50,
              width: double.infinity,
              child: Center(
                child: Text(
                  "CALCULATE YOUR BMI",
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}