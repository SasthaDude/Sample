import 'package:flutter/material.dart';

class Log extends StatelessWidget {
  const Log({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/abc.png"))),
        title: Center(child: Icon(Icons.home, size: 45, color: Colors.red)),
        actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("GT Software", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
        ],
        backgroundColor: Colors.lime,
      ),
      backgroundColor: Colors.green,
      body: Column(
        children: [
          SizedBox(height: 60,),
          Container(
              decoration: BoxDecoration(
                border: Border.all(
                ),
              ),
              child: Image.asset("assets/abc.png")),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "enter the name",
                  border: OutlineInputBorder())
            ),
          ),SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: "Password",
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){}, child: Text("Login")),
        ],
      ),
        
    );
  }
}
