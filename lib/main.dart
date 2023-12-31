import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
import 'Screens/output_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0xFF0A0D22),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 80,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xFF1D1F33),
           // backgroundColor: Color(0xFF111428),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF1C1F32),
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => InputPage(),
        '/result': (context) => OutputPage(),
      },
    );
  }
}