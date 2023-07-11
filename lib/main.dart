import 'package:flutter/material.dart';
import 'package:bmi/input_page.dart';
void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.red[800],
        appBarTheme: const AppBarTheme(foregroundColor: Colors.white,),
        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme:const TextTheme(
          bodyLarge: TextStyle(),
          titleLarge: TextStyle(fontSize: 28),
          bodyMedium: TextStyle(fontSize: 36, fontFamily: 'Ag'),
      ),
      ),
      home: const InputPage(title: 'BMI Calculator',),

    );
  }
}


