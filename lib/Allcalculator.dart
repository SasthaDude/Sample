import 'package:flutter/material.dart';
import 'package:sample/GST%20calc.dart';
import 'package:sample/Page%201.dart';
import 'package:sample/bmi.dart';
import 'package:sample/calculator.dart';

class calcAll extends StatefulWidget {
  const calcAll({super.key});

  @override
  State<calcAll> createState() => _calcAllState();
}

class _calcAllState extends State<calcAll> {

  int calc = 0;
  final page = [
    calculator(),
    gst(),
    bmi(),
  ];
  void tap(latOr)
  {
    setState(() {
      calc = latOr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[calc],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Normal"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined), label: "GST"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_sharp), label: "BMI"),
        ],
        currentIndex: calc,
        onTap: tap,
      ),
    );
  }
}
