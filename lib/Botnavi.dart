import 'package:flutter/material.dart';
import 'package:sample/eight.dart';


class BotNavi extends StatefulWidget {
  const BotNavi({super.key});

  @override
  State<BotNavi> createState() => _BotNaviState();
}

class _BotNaviState extends State<BotNavi> {

  int _index = 0 ;

  final page= [
    Text("ok"),
    eight(),
  ];

  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "profile"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}
