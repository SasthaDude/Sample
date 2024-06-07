import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class seven extends StatefulWidget {
  const seven({super.key});

  @override
  State<seven> createState() => _sevenState();
}

class _sevenState extends State<seven> {

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Form(
          key: _key,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images.jpg"),
                  fit: BoxFit.fill,
                )),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 550,
                  width: 310,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 30, sigmaX: 30),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 100,
                            width: 90,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(
                                image: AssetImage("assets/abc.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (input)
                              {
                                if(input == null || input.isEmpty)
                                  {
                                    return "please enter the name";
                                  }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: "Enter the name",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (input) {
                                if(input == null || input.isEmpty)
                                {
                                return "please enter your password";
                                }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.password),
                                hintText: "Enter the password",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                            onPressed: ()
                            {
                            if(_key.currentState!.validate())
                            {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("valid")));
                            }
                            },
                            child: Text("SUBMIT"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.tealAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}



class zxc extends StatefulWidget {
  const zxc({super.key});

  @override
  State<zxc> createState() => _zxcState();
}

class _zxcState extends State<zxc> {

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextFormField(
              validator: (input)
              {
                if(input == null || input.isEmpty )
                  {
                    return "please enter valid name";
                  }
              },
            ),
            ElevatedButton(
                onPressed: ()
                {
                if(_key.currentState!.validate())
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
                  }

            }, child: Text("ok"))
          ],
        ),
      ),
    );
  }
}


///reg exp