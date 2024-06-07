import 'package:flutter/material.dart';

class prf extends StatefulWidget {
  const prf({super.key});

  @override
  State<prf> createState() => _prfState();
}

class _prfState extends State<prf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 60,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/abc.png"),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
              //child: Image.asset("assets/abc.png")
              ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(30),
          child: Text("MY PROFILE", style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Presonal details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 350,
                // decoration: BoxDecoration(
                //   border: Border.all(),
                // ),
                child: Card(color: Colors.orange,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Name"),
                    trailing: Text(">", style: TextStyle(fontSize: 30),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 350,
                // decoration: BoxDecoration(
                //   border: Border.all(),
                // ),
                child: Card(color: Colors.orange,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text("Email"),
                    trailing: Text(">", style: TextStyle(fontSize: 30),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 350,
                // decoration: BoxDecoration(
                //   border: Border.all(),
                // ),
                child: Card(color: Colors.orange,
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("Phone Number"),
                    trailing: Text(">", style: TextStyle(fontSize: 30),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text("Report", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 350,
                // decoration: BoxDecoration(
                //   border: Border.all(),
                // ),
                child: Card(color: Colors.orange,
                  child: ListTile(
                    leading: Icon(Icons.report),
                    title: Text("Report"),
                    trailing: Text(">", style: TextStyle(fontSize: 30),),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text("Help", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 350,
                // decoration: BoxDecoration(
                //   border: Border.all(),
                // ),
                child: Card(color: Colors.orange,
                  elevation: 9,
                  child: ListTile(
                     leading: Icon(Icons.help),
                    title: Text("Contact"),
                    trailing: Text(">", style: TextStyle(fontSize: 30),
                    ),
                   ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
