import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListState();
}

class _ListState extends State<ListWidget> {
  List<double> values = [];
  TextEditingController valText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: valText,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 50,),
          ElevatedButton(
            onPressed: (){
              setState(() {
                values.add(double.parse(valText.text));
              });
            },
            child: Text("Add Value"),
          ),
          SizedBox(height: 20,),
          if (values.isNotEmpty)
            Column(
              children: [
                Text("Max Value: ${values.reduce((value, element) => value > element ? value : element)}"),
                Text("Min Value: ${values.reduce((value, element) => value < element ? value : element)}"),
              ],
            ),
          Expanded(
            child: ListView.builder(
                itemCount: values.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(values[index].toString()),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}
