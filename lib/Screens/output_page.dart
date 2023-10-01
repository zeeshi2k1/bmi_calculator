import 'package:flutter/material.dart';
import 'variables.dart';
import 'bottom_button.dart';

class OutputPage extends StatefulWidget {
  @override
  State<OutputPage> createState() => _OutputPageState();
}

class _OutputPageState extends State<OutputPage> {
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
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 15),
            child: Text(
              "Your Result",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 15, 30, 30),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color(0xFF1D1F33),
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 33, horizontal: 43),
                child: Column(
                  children: <Widget>[
                    Text(
                      status,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: statusColor,
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      bmi.toStringAsFixed(1),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Normal BMI range:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Color(0xFF8C8D97),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      range,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      remarks,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        letterSpacing: 0.5,
                      ),
                    ),
                    // Expanded(
                    //   child: Container(
                    //     margin: EdgeInsets.symmetric(vertical: 10),
                    //     width: 190,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(1),
                    //       color:  Color(0xFF181A2E),
                    //     ),
                    //     child: TextButton(
                    //       onPressed: (){},
                    //       child: Text("SAVE RESULT",
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //           letterSpacing: 2,
                    //           color: Colors.white,
                    //           fontSize: 12,
                    //           fontWeight: FontWeight.w500,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
          bottomButton(
              title: "RE-CALCULATE YOUR BMI",
              onPressed: () {
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}