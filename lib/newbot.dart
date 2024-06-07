import 'package:flutter/material.dart';


class newbot extends StatefulWidget {
  const newbot({super.key});

  @override
  State<newbot> createState() => _newbotState();
}

class _newbotState extends State<newbot> {

  int _index = 0;

  final page =[



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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "PROFILE"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}

