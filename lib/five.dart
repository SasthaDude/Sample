
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class five extends StatelessWidget {
  const five({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/abc.png"),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Container(
                height: 340,
                width: 320,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(
                                  image: AssetImage("assets/abc.png"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage("assets/abc.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 80,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        image: DecorationImage(
                                          image: AssetImage("assets/abc.png"),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage("assets/abc.png"),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 80,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage("assets/abc.png"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 80,
                            width: 150,
                            child: TextFormField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: "Enter",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("LOGIN"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
               // width: 320,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 250,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("assets/abc.png"),
                            fit: BoxFit.fill,
                          )
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      child: Text("GT Software college"
                          "offers Full stack web "
                          "development & mobile"
                          "development courses for"
                          "beginners from sctrath.", style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 250,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/abc.png"),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                    ),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
