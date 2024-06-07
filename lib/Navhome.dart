import 'package:flutter/material.dart';

class nav extends StatefulWidget {
  const nav({super.key});

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu),
        ),
        title: Center(
            child: Text("WELCOME")),
        actions: [
          SizedBox(width: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("GT", style: TextStyle(fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ],
        backgroundColor: Colors.greenAccent,
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images.jpg"),
            fit: BoxFit.fill,
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: Text("5 Things "
                    "We are unique from others "
                    "Personalized one-on-one training "
                    "100% Practical classes "
                    "No trainers, Only professionals "
                    "No syllabus based curriculum "
                    "We provide expert guidance to empower "
                    "you in developing your own applications, "
                    "such as those akin to Netflix, "
                    "Flipkart, CRM, ERP, and more",
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15, color: Colors.black,
                      ),
                  textAlign: TextAlign.justify,
                ),

                ),
              ),
          ],
        ),
      ),
    );
  }
}
