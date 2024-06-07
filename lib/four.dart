

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class four extends StatelessWidget {
  const four({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                  height: 70,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/images.jpg"),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                  //child: Image.asset("assets/images.jpg")
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 300,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lime,
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: 230,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  image: AssetImage("assets/abc.png"),
                                  fit: BoxFit.fill,
                                )
                              ),
                              //child: Image.asset("assets/abc.png")
                          ),
                          Text("HELLO", style: TextStyle(fontSize: 40),),
                        ],
                      ),
                      //child: Image.asset("assets/abc.png")
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 300,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.lime,
                      ),
                      child: Column(
                        children: [
                          Container(
                              height: 230,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  image: AssetImage("assets/abc.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              //child: Image.asset("assets/images.jpg")
                          ),
                          Text("GT", style: TextStyle(fontSize: 40),),

                        ],
                      ),
                      //child: Image.asset("assets/abc.png")
                  ),
                ),
              ],
            ),
          ),
             Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/abc.png"),
                    fit: BoxFit.fill,
                  ),
                ),

               child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 230,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/images.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          //child: Image.asset("assets/abc.png")
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 40,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 120,
                            width: 130,
                            child: TextFormField(decoration: InputDecoration(
                            icon: Icon(Icons.person),
                              hintText: "Enter",
                              border: OutlineInputBorder(),
                            ),
                            ),
                          ),
                        ),

                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: (){}, child: Text("LOGIN"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //child: Image.asset("assets/abc.png")
            ),
        ],
      ),
      backgroundColor: Colors.orangeAccent.shade400,
    );
  }
}
