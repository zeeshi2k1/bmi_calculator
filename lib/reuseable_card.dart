import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {

  ReuseableCard({
    required this.hexColor,
    required this.childCard,
  });

  final Color hexColor;
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: hexColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}