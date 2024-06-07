import 'package:flutter/material.dart';

class Nextone extends StatelessWidget {
  const Nextone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
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
                  shape: BoxShape.circle,
             ),
                ),
          ),
                //child: Image.asset("assets/abc.png")),
          SizedBox(height: 7,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/abc.png"),
                        fit: BoxFit.fill,
                      )

                    ),
                    child: Center(child: Text("GT", style: TextStyle(fontSize: 25, color: Colors.white),))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/abc.png"),
                        fit: BoxFit.fill,
                      )
                    ),
                    child: Center(child: Text("GT", style: TextStyle(fontSize: 25, color: Colors.white),))
                ),
              ),
            ],
          ),
          SizedBox(height: 7,),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/abc.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: "Name",
                    border: OutlineInputBorder(),
                  ),),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, child: Text("Done"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lime,
                    )
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}
