import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'result.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xFF0A0E21)),
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
      },
    );
  }
}
