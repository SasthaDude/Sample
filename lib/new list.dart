import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Editing%20List.dart';
import 'package:sample/Page%201.dart';

class newList extends StatefulWidget {
  const newList({super.key});

  @override
  State<newList> createState() => _newListState();
}

// class Information {
//   String name;
//   String pass;
//   String phone;
//   Information({required this.name, required this.pass, required this.phone});
// }

class _newListState extends State<newList> {
  // List<Information> nNew = [];
  // List <List<Information>> edList = [];
  TextEditingController name1 = TextEditingController();
  TextEditingController pass1 = TextEditingController();
  TextEditingController phone1 = TextEditingController();
  List<List<String>> nNew = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: name1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: pass1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "password"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: phone1,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "phone number"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              // if(name1.text.isNotEmpty && pass1.text.isNotEmpty && phone1.text.isNotEmpty){
              //   setState(() {
              //     Information infoEd = Information(name: name1.text, pass: pass1.text, phone: phone1.text);
              //     nNew.add(infoEd);
              //     edList.add([infoEd]);
              //     name1.clear();
              //     pass1.clear();
              //     phone1.clear();
              //   });
              // }
              setState(() {
                nNew.add([name1.text, pass1.text, phone1.text]);
                name1.clear();
                pass1.clear();
                phone1.clear();
              });
            },
                child: Text("Submit"),
            ),
          ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: nNew.length,
          //       itemBuilder: (context, index) {
          //       return GestureDetector(
          //         onTap: (){
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (context) => editList(
          //                    name: '',
          //                     pass: '',
          //                     phone: '',
          //                     ),
          //           ),
          //           );
          //         },
          //         child: Card(
          //           elevation: 10,
          //           child: Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceAround,
          //             children: [
          //               Column(
          //                 mainAxisAlignment: MainAxisAlignment.start,
          //                 children: [
          //                   Text("Name: ${nNew[index]}"),
          //                   Text("Password: ${nNew[index]}"),
          //                   Text("Phone: ${nNew[index]}"),
          //
          //                 ],
          //               ),
          //               Row(
          //                 children: [
          //                   IconButton(onPressed: (){},
          //                     icon: Icon(Icons.edit),
          //                   ),
          //                   IconButton(onPressed: (){
          //                     setState(() {
          //                       nNew.remove(nNew[index]);
          //                     });
          //                   },
          //                       icon: Icon(Icons.delete),
          //                   ),
          //                 ],
          //               )
          //             ],
          //           ),
          //         )
          //       );
          //
          //       // return  Card(
          //       //   child: ListTile(
          //       //     title: Column(
          //       //       crossAxisAlignment: CrossAxisAlignment.start,
          //       //       children: [
          //       //         Text("Name: ${nNew[index].name}"),
          //       //         Text("Password: ${nNew[index].pass}"),
          //       //         Text("Phone: ${nNew[index].phone}"),
          //       //       ],
          //       //     ),
          //       //     trailing: Row(
          //       //       mainAxisSize: MainAxisSize.min,
          //       //       children: [
          //       //         IconButton(onPressed: (){
          //       //           Navigator.push(
          //       //               context,
          //       //               MaterialPageRoute(
          //       //               builder: (context) => editList(item: nNew[index])
          //       //           ),
          //       //           );
          //       //         },
          //       //           icon: Icon(Icons.edit),
          //       //         ),
          //       //         IconButton(onPressed: (){
          //       //           setState(() {
          //       //             nNew.remove(nNew[index]);
          //       //           });
          //       //         },
          //       //             icon: Icon(Icons.delete),
          //       //         ),
          //       //       ],
          //       //     ),
          //       //   ),
          //       // );
          //       }
          //   ),
          // ),
          Container(
            height: 400,
            width: 500,
            child: ListView.builder(
                itemCount: nNew.length,
                itemBuilder: (Context, index) => Card(
                  elevation: 10,
                  child: Column(
                    children: nNew.map((item) {
                      return GestureDetector(
                        onTap: () async {
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => editList(
                                name: item[0],
                                pass: item[1],
                                phone: item[2],
                              ),
                            ),
                          );
                          if (result != null) {
                            setState(() {
                              final index = nNew.indexWhere((element) => element == item);
                              nNew[index] = result;
                            });
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text("Name: ${item[0]}"),
                                Text("pass: ${item[1]}"),
                                Text("phone: ${item[2]}"),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      // setState(() {
                                      //   showDialog(
                                      //       context: context,
                                      //       builder: (BuildContext context) =>
                                      //           AlertDialog(
                                      //             title: Text("Edit"),
                                      //             actions: [
                                      //               TextFormField(
                                      //                 controller: name1,
                                      //                 decoration: InputDecoration(
                                      //                   border: OutlineInputBorder(),
                                      //                 ),
                                      //               ),
                                      //               ElevatedButton(
                                      //                   onPressed: () {
                                      //                     setState(() {});
                                      //                   },
                                      //                   child: Text("OK"))
                                      //             ],
                                      //           ));
                                      // });
                                    },
                                    icon: Icon(Icons.edit)),
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        nNew.removeAt(index);
                                      });
                                    },
                                    icon: const Icon(Icons.delete)),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}




