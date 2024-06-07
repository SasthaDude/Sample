import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/netflixhome.dart';

class proSel extends StatefulWidget {
  const proSel({super.key});

  @override
  State<proSel> createState() => _proSelState();
}

class _proSelState extends State<proSel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(child: Image.asset("assets/title netflix.png", width: 110,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mode_edit_outline_outlined, size: 30, color: Colors.white,),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 350,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Who's Watching?", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => netHome()
                            ),
                          );
                        });
                      },
                      child: Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/getwatch.jpg"),
                            fit: BoxFit.fill,
                          ),
                          border: Border.all(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Mine", style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                  ],
                ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwpRS2MFp79ETGH1E6QxMJAJEe4PSIb3618Q&s"),
                            fit: BoxFit.fill,
                          ),
                          border: Border.all(),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("You", style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    ],
                  ),
              ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://images.ctfassets.net/9uhkiji6mhey/5dVvWjLeow0bEDqzBUlfex/7fef3dcd6bb3d3a2a349ec73bcb60e57/03_Netflix_Kids.jpg?q=100"),
                            fit: BoxFit.fill,
                          ),
                          border: Border.all(),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Children", style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white12),
                        ),
                        child: Icon(Icons.add, size: 50,color: Colors.white,),
                      ),
                      SizedBox(height: 10,),
                      Text("Add profile", style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,

    );
  }
}
