import 'dart:math';
import 'package:flutter/material.dart';

class CalculatorBrain extends StatefulWidget {
  CalculatorBrain({this.height, this.weight});

  final int? height;
  final int? weight;

  @override
  State<CalculatorBrain> createState() => _CalculatorBrain(height, weight);
}

// class _CalculatorBrain extends StatelessWidget {
//   _CalculatorBrain({super.key});

class _CalculatorBrain extends State<CalculatorBrain>{
  _CalculatorBrain(int? height, int? weight);

  int? height;
  int? weight;
  var abc = "abc";
  var cde = "cde";

  double _bmi = 0.0;



  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  void getResult() {
    setState(() {

      if (_bmi >= 25) {
        cde = 'Overweight';
      } else if (_bmi > 18.5) {
        cde = 'Normal';
      } else {
        cde = 'Underweight';
      }
    });

  }

  void getInterpretation() {
    if (_bmi >= 25) {
      abc = 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      abc = 'You have a normal body weight. Good job!';
    } else {
      abc = 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(onPressed: getResult, child:Text("MORE")),
          Text(cde),
        ],
      ),
    );
  }
}
