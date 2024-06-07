import 'dart:ui';

import 'package:flutter/material.dart';

class three extends StatelessWidget {
  const three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 70,
                  width: 70,
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
          SizedBox(height: 20,),
          Row(
            children: [
              Column(
                children: [
                  Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("assets/abc.png"),
                          fit: BoxFit.fill,
                        )
                      ),
                      //child: Image.asset("assets/abc.png")
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/abc.png"),
                                fit: BoxFit.fill,
                              )
                            ),
                            //child: Image.asset("assets/abc.png")
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/abc.png"),
                                fit: BoxFit.fill,
                              )
                            ),
                            //child: Image.asset("assets/abc.png")
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 70,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/abc.png"),
                                fit: BoxFit.fill,
                              )
                            ),
                            //child: Image.asset("assets/abc.png")
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/abc.png"),
                                    fit: BoxFit.fill,
                                  )
                                ),
                                //child: Image.asset("assets/abc.png")
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 380,
                width: 310,
                decoration: BoxDecoration(
                  border: Border.all(),
                  ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 300,
                      width: 130,
                      decoration: BoxDecoration(
                        border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("assets/images.jpg"),
                            fit: BoxFit.fill,
                          )
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 50,),
                      Container(
                        height:120,
                        width: 130,
                        child: TextFormField(decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: "Enter",
                          border: OutlineInputBorder(),
                        ),
                        ),
                      ),
                      ElevatedButton(onPressed: (){}, child: Text("LOGIN"),
                      ),
                    ],
                  ),
                ],
              ),
                ),

            //child: Image.asset("assets/images.jpg")
            ),
        ],
      ),
      backgroundColor: Colors.limeAccent,
    );
  }
}


class qwertyy extends StatelessWidget {
  const qwertyy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/abc.png")
                  )
              ),
              child: ClipRRect(
                child: BackdropFilter(

                  filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),

                  child: Center(child: Text("ok")),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
