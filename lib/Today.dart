import 'package:flutter/material.dart';

class Newone extends StatelessWidget {
  const Newone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/abc.png"),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),

                ),
        ),
        title: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.home, color: Colors.pinkAccent, size: 35,),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("GT", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 35),
          ),
          )],
        backgroundColor: Colors.white30,
    ),
    backgroundColor: Colors.blueGrey.shade400,
      body: Column(
        children: [
          Container(

              height: 300,
              width: 300,
              decoration: BoxDecoration(
          border:Border.all(),
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/abc.png"),
                  fit: BoxFit.fill,

                )
              ),

              child:  Column(
      children: [
        SizedBox(height: 15,),
      TextFormField(decoration: InputDecoration(
          icon: Icon(Icons.person),
        hintText: "Enter your name",
        border: OutlineInputBorder()
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(onPressed: (){}, child: Text("HI")),
    )
    ],
    ),
              //child: Image.asset("assets/abc.png"),
          ),
          Text("WELCOME", style: TextStyle(fontWeight: FontWeight.bold), ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(decoration: InputDecoration(
            icon: Icon(Icons.person),
              hintText: "Enter your name",
              border: OutlineInputBorder()
            ),
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(decoration: InputDecoration(
            icon: Icon(Icons.password),
              hintText: "Type Password",
              border: OutlineInputBorder()
            ),
            ),
          ),
          SizedBox(height: 40,),
          Center(
            child: ElevatedButton(onPressed: (){}, child: Text("SUBMIT"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lime
              ),
            ),
          )

    ],
      ),
    );

    }
}
