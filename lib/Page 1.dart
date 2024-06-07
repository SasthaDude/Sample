
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart'; 

class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Center(child: Text("Newpage")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.abc_rounded),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.access_alarm),
          ),
        ],
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          TextFormField(),
          SizedBox(height: 50,),
          Center(child: TextFieldTapRegion(child: Text("Previous"))),
          SizedBox(height: 50,),
          Center(child: TextButton(onPressed: (){}, child: Text("Next"))),
          SizedBox(height: 50,),
          Container(
            height: 450, width: 300,
              child: Image.asset("assets/abc.png")),
        ],
      ),
    );
  }
}
