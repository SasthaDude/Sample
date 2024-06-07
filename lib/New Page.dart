

import 'package:flutter/material.dart';

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,size: 35,color: Colors.cyan,),
        title: Text("NEW PAGE",style: TextStyle(color: Colors.cyan,fontSize: 35,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.pages),
          ),


        ],
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [

          Container(
            height: 400,
              width: 300,
            // color: Colors.cyan,
             decoration: BoxDecoration(
               color: Colors.cyan,
               border: Border.all(),
              // borderRadius: BorderRadius.circular(35),
               image: DecorationImage(
                 image: AssetImage("assets/abc.png"),
                 fit: BoxFit.fill,
               ),
               shape: BoxShape.circle
             ),
            child: Center(child: Text("ok",style: TextStyle(color: Colors.cyan),)),

          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "enter the name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 40,),
          TextFormField(),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){}, child: Text("Done")),
        ],


      ),
    );
  }
}
