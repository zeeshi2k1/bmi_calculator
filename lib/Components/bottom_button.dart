import 'package:flutter/material.dart';
import 'constants.dart';

class bottomButton extends StatefulWidget {

  bottomButton({required this.title, required this.onPressed});

  final String title;
  final Function onPressed;

  @override
  State<bottomButton> createState() => _bottomButtonState(title: title, onPressed: onPressed);
}

class _bottomButtonState extends State<bottomButton> {
  _bottomButtonState({required this.title, required this.onPressed});

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