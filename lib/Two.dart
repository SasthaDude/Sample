import 'package:flutter/material.dart';

class two extends StatelessWidget {
  const two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
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
                //child: Image.asset("assets/abc.png")),
              ),
            ),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/abc.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 85,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/abc.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 85,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/abc.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 85,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/abc.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 85,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/abc.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),

            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 100,
                    child: Image.asset("assets/abc.png",fit: BoxFit.fill,),
                  ),
                ),

                Column(
                  children: [
                    SizedBox(height: 50,),
                    Container(
                      width: 120,
                      child: TextFormField(decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: "Name",
                        border: OutlineInputBorder(),
                      ),),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: () {}, child: Text("done"),),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
