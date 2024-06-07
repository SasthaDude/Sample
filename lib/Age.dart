import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class age extends StatefulWidget {
  const age({super.key});

  @override
  State<age> createState() => _ageState();
}

class _ageState extends State<age> {


  TextEditingController dobDate = TextEditingController();
  TextEditingController dobMonth = TextEditingController();
  TextEditingController dobYear = TextEditingController();
  TextEditingController prDate = TextEditingController();
  TextEditingController prMonth = TextEditingController();
  TextEditingController prYear = TextEditingController();
  TextEditingController AgeDays = TextEditingController();
  TextEditingController AgeYears = TextEditingController();
  TextEditingController AgeMonths = TextEditingController();
  dynamic resDays = "";
  dynamic resMonth = "";
  dynamic resYear = "";


  void calAGe (){
    double dDate = double.parse(dobDate.text);
    double dMonth = double.parse(dobMonth.text);
    double dYear = double.parse(dobYear.text);
     double pDate = double.parse(prDate.text);
     double pMonth = double.parse(prMonth.text);
     double pYear = double.parse(prYear.text);


      double difYear = ((pYear - dYear) - 1);
      double difMonth = ((pMonth - dMonth)+ (difYear*12));
      double difDays = (difMonth * 30.45);




    dobDate.text.toString();
    dobMonth.text.toString();
    dobYear.text.toString();
    prYear.text.toString();
    prMonth.text.toString();
    prDate.text.toString();
     AgeDays.text = difDays.toStringAsFixed(0);
      AgeMonths.text = difMonth.toStringAsFixed(0);
      AgeYears.text = difYear.toStringAsFixed(0);

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(child: Text("AGE CALCULATOR")),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Date of Birth", style: TextStyle(color: Colors.black)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                 // color: Colors.red,
                ),
                child: TextFormField(
                  controller: dobDate,
                  decoration: InputDecoration(
                    hintText: "Date",
                    border: OutlineInputBorder(),
                  ),
                )
              ),
              Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                 // color: Colors.red,
                ),
                child: TextFormField(
                  controller: dobMonth,
                  decoration: InputDecoration(
                    hintText: "Month",
                    border: OutlineInputBorder(),
                  ),
                )
              ),
              Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                 // color: Colors.red,
                ),
                child: TextFormField(
                  controller: dobYear,
                  decoration: InputDecoration(
                    hintText: "Year",
                    border: OutlineInputBorder(),
                  ),
                )
              ),
            ],
          ),
          Text("Age at the date of", style: TextStyle(color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                  ),
                  child: TextFormField(
                    controller: prDate,
                    decoration: InputDecoration(
                      hintText: "Date",
                      border: OutlineInputBorder(),
                    ),
                  )
              ),
              Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                  ),
                  child: TextFormField(
                    controller: prMonth,
                    decoration: InputDecoration(
                      hintText: "Month",
                      border: OutlineInputBorder(),
                    ),
                  )
              ),
              Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                  ),
                  child: TextFormField(
                    controller: prYear,
                    decoration: InputDecoration(
                      hintText: "Year",
                      border: OutlineInputBorder(),
                    ),
                  )
              ),
            ],
          ),
          ElevatedButton(
              onPressed: (){
                calAGe();
              },
              child: Text("CALCULATE"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Age in years:", style: TextStyle(
                fontSize: 20,
                color: Colors.pink, fontWeight: FontWeight.w500,

              ),
              ),
              Container(
                width: 200,
                child: TextFormField(
                  controller: AgeYears,
                  decoration: InputDecoration(
                    hintText: "Year",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Age in months:", style: TextStyle(
                fontSize: 20,
                color: Colors.pink, fontWeight: FontWeight.w500,

              ),
              ),
              Container(
                width: 200,
                child: TextFormField(
                  controller: AgeMonths,
                  decoration: InputDecoration(
                    hintText: "Months",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Age in Days:", style: TextStyle(
                fontSize: 20,
                color: Colors.pink, fontWeight: FontWeight.w500,

              ),
              ),
              Container(
                width: 200,
                child: TextFormField(
                  controller: AgeDays,
                  decoration: InputDecoration(
                    hintText: "Days",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      //backgroundColor: Colors.black,
    );
  }
}
