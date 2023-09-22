import 'package:flutter/material.dart';

class genderCard extends StatelessWidget {

  genderCard({
    required this.angleValue,
    required this.title,
    required this.icon,
    required this.coloring
  });

  final double angleValue;
  final String title;
  final Icon icon;
  final Color coloring;

  @override
  Widget build(BuildContext context) {
    return Column(
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
              fontSize: 15,
              color: coloring
          ),
        ),
      ],
    );
  }
}