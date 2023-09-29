import 'package:flutter/material.dart';

const kGenderCardColor = Color(0xFF1D1E33);
const kCardColor = Color(0xFF111428);
const kActiveColor = Colors.white;
const kInactiveColor = Color(0xFF767883);
const kPinkColor = Color(0xFFEB1555);
final double kMin = 120;
final double kMax = 220;
final double kOverlayRadius = 17;
final double kOverlayOpacity = 0.2;
final double kTrackHeight = 1;
int height = 183;
int weight = 74;
int age = 19;
double bmi = 0;


const kTitleStyle = TextStyle(
  color: kInactiveColor,
  fontWeight: FontWeight.w500,);

const kValueStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 40,);


class kCalButton extends StatefulWidget {

  kCalButton({required this.title, required this.onPressed});

  final String title;
  final Function onPressed;

  @override
  State<kCalButton> createState() => _kCalButtonState(title: title, onPressed: onPressed);
}

class _kCalButtonState extends State<kCalButton> {
  _kCalButtonState({required this.title, required this.onPressed});

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      setState(() {
        onPressed();
      });
      },
      child: Container(
        color: kPinkColor,
        margin: EdgeInsets.only(top: 15),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}



// setState(() {
// double heightmeter = height/100;
// bmi = weight / (heightmeter * heightmeter);
// Navigator.pushNamed(context, '/result');
// });
//
// GestureDetector(
// onTap: () {
// setState(() {
// double heightmeter = height/100;
// bmi = weight / (heightmeter * heightmeter);
// Navigator.pushNamed(context, '/result');
// });
// },
// child: Container(
// color: kPinkColor,
// margin: EdgeInsets.only(top: 15),
// height: 50,
// width: double.infinity,
// child: Center(
// child: Text(
// "CALCULATE YOUR BMI",
// style: TextStyle(
// color: Colors.white,
// letterSpacing: 2,
// ),
// ),
// ),
// ),
// ),