import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/abc.png"),
        title: Center(child: Text("FIRST PAGE")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("search"),
          ),

        ],
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          TextFormField(),
          SizedBox(height: 40,),
          TextFormField(),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){}, child: Text("previous")),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){}, child: Text("Next")),
        ],
      ),
    );
  }
}
