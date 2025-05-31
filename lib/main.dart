import 'package:flutter/material.dart';
import 'calculatorApp.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Calculator',
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
      brightness: Brightness.dark,
    ),
    home: CalculatorApp(),
  ));
}