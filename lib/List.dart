import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {

List values = [];

  TextEditingController valText = TextEditingController();
TextEditingController editIng = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: valText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  values.add(double.parse(valText.text));
                });
              },
              child: Text("Login"),
          ),
          if (values.isNotEmpty)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Max Value: ${values.reduce((value, element) => value > element ? value : element)}",
                style: TextStyle(
                fontSize: 20,
                ),
                ),
                Text("Min Value: ${values.reduce((value, element) => value < element ? value : element)}",
                style: TextStyle(
                fontSize: 20,
                ),
                ),
              ],
            ),
          Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListView.builder(
                itemCount: values.length,
                itemBuilder: (context, index){
                  return GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>qwe(data: values[index])));
                    },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(values[index].toString(), style: TextStyle(
                              fontSize: 25,
                              ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(onPressed: (
                                  ){
                                setState(() {
                                  values.remove(values[index]);
                                });
                              },
                                icon: Icon(Icons.delete),
                              ),
                              IconButton(onPressed: (){
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      return AlertDialog(
                                        title: Text("EDIT"),
                                        content: TextField(
                                          decoration: InputDecoration(
                                            hintText: "Enter the text",
                                          ),
                                          controller: editIng,
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: (){
                                                setState(() {
                    
                                                });
                                                Navigator.of(context).pop();
                    
                                              },
                                              child: Text("Cancel"),
                                          ),
                                          TextButton(
                                              onPressed: (){
                                                setState(() {
                                                  values[index] = double.parse(editIng.text);
                                                });
                                                Navigator.of(context).pop();
                                                editIng.clear();
                                              },
                                              child: Text("OK"),
                                          ),
                                        ],
                                      );
                                }
                                );
                              },
                                icon: Icon(Icons.edit),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  values.sort();
                });
              },
                child: Text("Sort"),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  values.sort((b, a) => a.compareTo(b));
                });
              },
                child: Text("reverse"),
              ),
          ],
          )
        ],
      ),
    );
  }
}



class qwe extends StatefulWidget {
  String data;
   qwe({super.key,required this.data});

  @override
  State<qwe> createState() => _qweState();
}

class _qweState extends State<qwe> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.data!);
  }
}




class ewq extends StatefulWidget {
  const ewq({super.key});

  @override
  State<ewq> createState() => _ewqState();
}

class _ewqState extends State<ewq> {

  final ctrl = TextEditingController();
  List a =[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(controller: ctrl,),
          ElevatedButton(onPressed: (){
            setState(() {
              a.add(ctrl.text);
            });
          }, child: Text("ok")),
          Container(
            height: 100,
            color: Colors.cyanAccent,
            child: ListView.builder(
              itemCount: a.length,
                itemBuilder: (BuildContext c,index)
                    {
                      return GestureDetector(
                        onTap: ()
                        {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>qwe(data: a[index])));
                        },
                        child: Container(
                          height: 50,
                            color: Colors.red,
                            child: Text(a[index])),
                      );
                    }
            ),
          )
        ],
      ),
    );
  }
}

