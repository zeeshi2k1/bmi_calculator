import 'package:flutter/material.dart';
import 'variables.dart';
import 'dart:math';

class Calculation{

  void checkBMI(){

    bmi = weight / pow(height/100, 2);

    if(age >= 18){
      range = "18.5 - 25 kg/m2";

      if (bmi < 18.5){
        status = "UNDERWEIGHT";
        remarks =  "You are underweight. Please consult a healthcare professional for guidance.";
        statusColor = Colors.blue;
      }
      else if (bmi >= 18.5 && bmi <= 24.9){
        status = "NORMAL";
        remarks = "You have a normal body weight. Good Job!";
        statusColor = Color(0xFF22D976);
      }
      else if (bmi >= 25 && bmi <= 29.9){
        status = "OVERWEIGHT";
        remarks =  "You are overweight. Consider making healthy lifestyle changes.";
        statusColor = Colors.yellow;
      }
      else if (bmi >= 30 && bmi <= 34.9){
        status = "OBESITY (CLASS I)";
        remarks = "You have obesity (Class I). It's important to focus on improving your health.";
        statusColor = Colors.orange;
      }
      else if (bmi >= 35 && bmi <= 39.9){
        status = "OBESITY (CLASS II)";
        remarks = "You have severe obesity (Class II). Seek medical advice for a healthier lifestyle.";
        statusColor = Color(0xFFFF6600);
      }
      else if (bmi >= 40){
        status = "OBESITY (CLASS III)";
        remarks = "You have extreme obesity (Class III). Immediate medical attention is recommended.";
        statusColor = Colors.red;
      }
    }
    else if(age < 18){
      range = "18.5 - 25 kg/m2";

      if (bmi < 18.5){
        status = "UNDERWEIGHT";
        remarks =  "You are underweight. Please consult a healthcare professional for guidance.";
        statusColor = Colors.blue;
      }
      else if (bmi >= 18.5 && bmi <= 24.9){
        status = "NORMAL";
        remarks = "You have a normal body weight. Good Job!";
        statusColor = Color(0xFF22D976);
      }
      else if (bmi >= 25 && bmi <= 29.9){
        status = "OVERWEIGHT";
        remarks =  "You are overweight. Consider making healthy lifestyle changes.";
        statusColor = Colors.yellow;
      }
      else if (bmi >= 30 && bmi <= 34.9){
        status = "OBESITY (CLASS I)";
        remarks = "You have obesity (Class I). It's important to focus on improving your health.";
        statusColor = Colors.orange;
      }
      else if (bmi >= 35 && bmi <= 39.9){
        status = "OBESITY (CLASS II)";
        remarks = "You have severe obesity (Class II). Seek medical advice for a healthier lifestyle.";
        statusColor = Color(0xFFFF6600);
      }
      else if (bmi >= 40){
        status = "OBESITY (CLASS III)";
        remarks = "You have extreme obesity (Class III). Immediate medical attention is recommended.";
        statusColor = Colors.red;
      }
    }
  }
}