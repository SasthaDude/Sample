import 'package:flutter/material.dart';

class asd extends StatelessWidget {
  const asd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: Text("Master")),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.wallet),
          ),

        ],
      ),
      body: Column(
        children: [
          TextFormField(),
          SizedBox(height: 80,),
          TextFormField(),
          SizedBox(height: 80,),
          ElevatedButton(onPressed: (){}, child: Text("Logout")),
          SizedBox(height: 80,),
          Container(
            height: 150, width: 100,
              child: Image.asset("assets/abc.png")),

        ],
      ),
    );
  }
}
