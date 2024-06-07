

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class nine extends StatefulWidget {
  const nine({super.key});

  @override
  State<nine> createState() => _nineState();
}

class _nineState extends State<nine> {
final _textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 500,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Column(
                children: [
                  SizedBox(height: 80,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: "Enter the name",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _textEditingController,
                        onChanged: (value)
                          {
                            setState(() {
                            });
                          },
                        decoration: InputDecoration(
                          icon: Icon(Icons.password),
                          hintText: "Enter the password",
                          border: OutlineInputBorder(),
                        ),
                      ),
                  ),
                  Visibility(
                    visible: _textEditingController.text.isNotEmpty,
                    child: ElevatedButton(onPressed: (){}, child: Text("Submit"),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}

// Column(
// children: [
// Visibility(
// visible: _show,
// child: Container(
// height: 100,
// width: 100,
// color: Colors.cyan,
// ),
// ),
// ElevatedButton(onPressed: (){
// setState(() {
// _show = !_show;
// });
// }, child: Text("ok"))
// ],
// )
