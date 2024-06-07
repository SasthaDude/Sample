import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/OTTgetstarted.dart';

import 'Netflixlogin.dart';

class loget extends StatefulWidget {
  const loget({super.key});

  @override
  State<loget> createState() => _logetState();
}

class _logetState extends State<loget> {

  final email = GlobalKey<FormState>();
  TextEditingController emaL = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: email,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => getstarted()
                          ),
                        );
                      });
                    },
                      child: Icon(Icons.cancel_outlined,
                      size: 30,),
                  ),
              ),
              SizedBox(height: 30,),
              Text("Ready to watch?", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
              ),
              SizedBox(height: 30,),
              Text("Enter your email to create or sign in to your account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                validator: (input)
                {
                  if(input == null || input.isEmpty)
                  {
                    return "Email id required";
                  }
                  else{
                    setState(() {
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => netlog()
                        ),
                      );
                    });
                  }
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 30,),
              Card(
                elevation: 15,
                child: GestureDetector(
                  onTap: (){
                    if(email.currentState!.validate());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.red.shade900,
                    ),
                    child: Center(child: Text("Get Started", style: TextStyle(fontSize: 20, color: Colors.white),)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
