import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/TOTALWORK.dart';
import 'package:sample/newbot.dart';

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();

}

class _appState extends State<app> {

  final _key = GlobalKey<FormState>();
  final TextEditingController _textEditingController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Form(
          key: _key,
          child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.green,
                ),
            child: Column(
              children: [
                SizedBox(height: 120,),
                Container(
                  height: 500,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/images.jpg"),
                      fit: BoxFit.fill,
                    )
                  ),
                  child:  Column(
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 70,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/abc.png"),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (input)
                            {
                              if(input == null || input.isEmpty)
                              {
                                return "Enter the name";
                              }
                              {
                                if (input.length<3)
                              {
                                return "name should be minimum of 3 letters";
                              }
                              }
                            },
                          decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: "Enter the name",
                            border: OutlineInputBorder(),

                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _textEditingController,
                          onChanged: (value)
                            {
                              setState(() {

                              });
                            },

                          validator: (input)
                          {
                            if(input == null || input.isEmpty)
                            {
                              return "Please enter password";
                            }
                            {
                              if(input.length<8)
                              {
                                return "minimum of 8 characters needed";
                              }
                            }
                          },
                          decoration: InputDecoration(
                            icon: Icon(Icons.password),
                            hintText: "Enter the password",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      Visibility(
                        visible: _textEditingController.text.isNotEmpty,
                        child: ElevatedButton(onPressed: (){
                          {
                            Navigator.push(
                              context,
                                MaterialPageRoute(builder: (context) => const bottom()
                                ),
                            );
                          }

                          if(_key.currentState!.validate());
                        }, child: Text("SUBMIT")),
                      ),
                    ],
                  )
                ),
              ],
            )
              ),
        ),
      ),
    );
  }
}

