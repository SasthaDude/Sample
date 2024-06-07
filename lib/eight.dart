import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/six.dart';

class eight extends StatefulWidget {
  const eight({super.key});

  @override
  State<eight> createState() => _eightState();
}

class _eightState extends State<eight> {

  final _key = GlobalKey<FormState>();

  final RegExp phoneRegex = RegExp(r'^[0-9]+$');

  final RegExp emailRegex = RegExp(r'^[a-z0-9]+@[a-z]+\.[a-z]+$');

  final TextEditingController _textEditingController = TextEditingController();

  //final RegExp nameRegex = RegExp(r'^[a-z]+$');

 // final RegExp passwordRegex = RegExp(r'^[A-Za-z0-9!@#$%^&*()_+-={}|:"<>?,.' ;/\]$')



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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 700,
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
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: ()
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const six()),
                              );
                            },

                            child: Container(
                              height: 80,
                              width: 70,
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
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (input)
                              {
                                if(input == null || input.isEmpty)
                                {
                                  return "Please enter your name";
                                }
                                {
                                  if(input.length<3)
                                  {
                                    return "Name should be more then 3 letters";
                                  }
                                }
                                // {
                                //   if(RegExp(r'^[a-z]+$').hasMatch(input))
                                //     {
                                //       return "enter only alphabetic characters";
                                //     }
                                // }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: "Enter the name",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
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
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              validator: (input)
                              {
                                if(input == null || input.isEmpty)
                                  {
                                    return "please enter email";
                                  }
                                {
                                  if(!emailRegex.hasMatch(input))
                                    {
                                      return "please enter valid email";
                                    }
                                }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                hintText: "Enter the email",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
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
                                     return "please enter phone number";
                                  }
                                 {
                                   if(input.length!=10)
                                     {
                                       return "minimum of 10 numbers needed";
                                     }
                                   {
                                     if(!phoneRegex.hasMatch(input))
                                     {
                                       return "enter only numeric characters";
                                     }
                                   }
                                 }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.phone),
                                hintText: "Enter phone number",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Visibility(
                            visible: _textEditingController.text.isNotEmpty,
                            child: ElevatedButton(
                              onPressed: () {
                                if(_key.currentState!.validate())
                                  {
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Valid")));

                                  }
                              },
                              child: Text("SUBMIT"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.tealAccent,
                              ),
                            ),
                          ),
                          ElevatedButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const six()),
                            );

                          }, child: Text("ok"))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
