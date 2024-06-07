
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/OTTgetstarted.dart';
import 'package:sample/profileselection.dart';

class netlog extends StatefulWidget {
  const netlog({super.key});

  @override
  State<netlog> createState() => _netlogState();
}

class _netlogState extends State<netlog> {

  final logKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            setState(() {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (context) => getstarted()
                ),
              );
            });
          },
            child: Icon(Icons.arrow_back, color: Colors.white,)),
        title:  Image.asset("assets/title netflix.png", width: 130,),
        backgroundColor: Colors.black,

      ),
      body: Form(
        key: logKey,
        child: Column(
          children: [
            SizedBox(height: 100),
            Container(
              width: 380,
              decoration: BoxDecoration(
               // border: Border.all(color: Colors.white),
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  validator: (input)
                  {
                    if(input == null || input.isEmpty)
                    {
                      return "please enter the valid input";
                    }
                    else{
                      setState(() {
                        Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => proSel()
                          ),
                        );
                      });
                    }
                  },
                  decoration: InputDecoration(
                    //focusedBorder: InputBorder.none,
                    //disabledBorder: InputBorder.none,
                    errorStyle: TextStyle(
                      fontSize: 18,
                        color: Colors.red,
                       ),
                    fillColor: Colors.grey.shade800,
                    filled: true,
                    labelText: "Email or phone number",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                    ),
                    border: OutlineInputBorder(),
                    //focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none

                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 380,
              decoration: BoxDecoration(
                //border: Border.all(color: Colors.white),
              ),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                validator: (input)
                {
                  if(input == null || input.isEmpty)
                  {
                    return "Enter valid password.";
                  }
                  else{
                    setState(() {
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => proSel()
                        ),
                      );
                    });
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade800,
                  errorStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 25,),
                  border: OutlineInputBorder(),
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                if(logKey.currentState!.validate());
              },
              child: Container(
                height: 60,
                width: 380,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: Text("Sign In", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text("OR", style: TextStyle(color: Colors.white,
                fontSize: 20,
            fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              color: Colors.grey.shade800,
              child: Container(
                height: 60,
                width: 380,
                alignment: Alignment.center,
                child: Text("Use a Sign-In Code", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text("Forgot password?", style: TextStyle(color: Colors.white,
            fontSize: 25, fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 30),
            Text("New to Netflix? Sign up now",style: TextStyle(color: Colors.white,
            fontSize: 22, fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 30),
            Text("Sign in is protected by Google reCAPTCHA to ensure you're not a bot. Learn more",
                 style: TextStyle(color: Colors.white,
                   fontSize: 18,
              ),
              textAlign: TextAlign.center,
             ),

          ],
        ),
      ),
      backgroundColor: Colors.black,


    );
  }
}
