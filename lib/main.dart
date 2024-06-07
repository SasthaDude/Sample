import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sample/Editing%20List.dart';
import 'package:sample/GST%20calc.dart';
import 'package:sample/Insta.dart';
import 'package:sample/List.dart';
import 'package:sample/Netflixlogin.dart';
import 'package:sample/bmi.dart';
import 'package:sample/new%20list.dart';
import 'package:sample/product%20discription.dart';
import 'package:sample/profileselection.dart';
import 'package:sample/spotpage.dart';

import 'Age.dart';
import 'Allcalculator.dart';
import 'Botnavi.dart';
import 'NEWDART.dart';
import 'OTTgetstarted.dart';
import 'REPORT.dart';
import 'New Login.dart';
import 'Spotify.dart';
import 'TOTALWORK.dart';
import 'amazon product.dart';
import 'calculator.dart';
import 'ccc.dart';
import 'ffff.dart';
import 'logetstart.dart';
import 'netflixhome.dart';
import 'nine.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: insta(),
      
    );
  }
}
