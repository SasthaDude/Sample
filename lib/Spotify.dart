

import 'package:flutter/material.dart';

class spotify extends StatelessWidget {
  const spotify({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled)
    {
      return [
              SliverAppBar(
                //title: Text("Best of all Time"),
                //expandedHeight: 700,
                toolbarHeight: 650,
                floating: true ,
                //pinned: true,
                //snap: true,
                forceElevated: innerBoxIsScrolled,
                flexibleSpace:FlexibleSpaceBar(
                  title: Text("Best of all Time"),
                  background:   Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff1f005c),
                            Color(0xff5b0060),
                            Color(0xff870160),
                            Color(0xffac255e),
                            Color(0xffca485c),
                            Color(0xffe16b5c),
                            Color(0xfff39060),
                            Color(0xffffb56b),
                          ]
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.arrow_back, color: Colors.white,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 300,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search, color: Colors.white,),
                                    hintText: "Find in playlist",
                                    hintStyle: TextStyle(color: Colors.white),
                                    border: OutlineInputBorder(
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,),
                                ),
                                child: Center(child: Text("Sort", style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                                ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 300,
                            width: 300,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(
                                image: AssetImage("assets/spotamil.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            //child: Image.asset("abc.png")
                          ),
                        ),
                        Text("Check out the Best of all Time.", style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/spotify.png"),
                                  fit: BoxFit.fill,
                                ),
                                shape: BoxShape.circle,
                              ),
                              //child: Image.asset("assets/spotify.png")
                            ),
                            SizedBox(width: 10,),
                            Text("Spotify", style: TextStyle(
                              fontSize: 18,
                              //fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            ),

                          ],
                        ),
                        Text("89,046 saves. 3h 19min", style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all( color: Colors.white),
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                          image: AssetImage("assets/spotamil.jpg"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: BoxShape.rectangle
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.add_circle_outline, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.arrow_circle_down, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.more_vert, color: Colors.white,),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.shuffle_rounded, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.play_arrow),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

            ];
          },
        body:Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                       height: 100,
                       width: 100,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage("assets/spotify.png")
                         ),
                         shape: BoxShape.rectangle,
                       ),
                       //child: Image.asset("assets/spotify.png")
                   ),
              Text("Nyabagam"
                   "Amrit ramnath, Aindoora Jishnu", style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              ),
                  Icon(Icons.more_vert),
                ],
              ),

              // child: ListTile(
              //   leading: Container(
              //       height: 100,
              //       width: 100,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage("assets/spotify.png")
              //         ),
              //         shape: BoxShape.rectangle,
              //       ),
              //       //child: Image.asset("assets/spotify.png")
              //   ),
              //   title: Text("Nyabagam"
              //   "Amrit ramnath, Aindoora Jishnu"),
              //   trailing: Icon(Icons.more_vert),
              // ),
            ),

            CircleAvatar(),
            CircleAvatar(),
            CircleAvatar(),
            CircleAvatar(),
            CircleAvatar(),
          ],
        ),
    );
  }
}

//       SliverAppBar(
       //         toolbarHeight: 700,
       //         floating: true,
       //         pinned: true,
       //         snap: false,
       //         flexibleSpace:Container(
       //           decoration: BoxDecoration(
       //             gradient: LinearGradient(
       //                 begin: Alignment.topLeft,
       //                 end: Alignment.bottomRight,
       //                 colors: [
       //                   Color(0xff1f005c),
       //                   Color(0xff5b0060),
       //                   Color(0xff870160),
       //                   Color(0xffac255e),
       //                   Color(0xffca485c),
       //                   Color(0xffe16b5c),
       //                   Color(0xfff39060),
       //                   Color(0xffffb56b),
       //                 ]
       //             ),
       //           ),
       //           child: Column(
       //             crossAxisAlignment: CrossAxisAlignment.start,
       //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       //             children: [
       //               Icon(Icons.arrow_back, color: Colors.white,),
       //               Padding(
       //                 padding: const EdgeInsets.all(8.0),
       //                 child: Row(
       //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
       //                   children: [
       //                     Container(
       //                       width: 300,
       //                       child: TextFormField(
       //                         decoration: InputDecoration(
       //                           prefixIcon: Icon(Icons.search, color: Colors.white,),
       //                           hintText: "Find in playlist",
       //                           hintStyle: TextStyle(color: Colors.white),
       //                           border: OutlineInputBorder(
       //                           ),
       //                         ),
       //                       ),
       //                     ),
       //                     Container(
       //                       height: 50,
       //                       width: 70,
       //                       decoration: BoxDecoration(
       //                         border: Border.all(color: Colors.white,),
       //                       ),
       //                       child: Center(child: Text("Sort", style: TextStyle(
       //                         fontSize: 15,
       //                         fontWeight: FontWeight.bold,
       //                         color: Colors.white,
       //                       ),
       //                       ),
       //                       ),
       //                     ),
       //                   ],
       //                 ),
       //               ),
       //               Center(
       //                 child: Container(
       //                   height: 300,
       //                   width: 300,
       //                   decoration: BoxDecoration(
       //                     border: Border.all(),
       //                     image: DecorationImage(
       //                       image: AssetImage("assets/spotamil.jpg"),
       //                       fit: BoxFit.fill,
       //                     ),
       //                   ),
       //                   //child: Image.asset("abc.png")
       //                 ),
       //               ),
       //               Text("Check out the Best of all Time.", style: TextStyle(
       //                 fontSize: 18,
       //                 color: Colors.white,
       //               ),
       //               ),
       //               Row(
       //                 children: [
       //                   Container(
       //                     width: 30,
       //                     height: 30,
       //                     decoration: BoxDecoration(
       //                       image: DecorationImage(
       //                         image: AssetImage("assets/spotify.png"),
       //                         fit: BoxFit.fill,
       //                       ),
       //                       shape: BoxShape.circle,
       //                     ),
       //                     //child: Image.asset("assets/spotify.png")
       //                   ),
       //                   SizedBox(width: 10,),
       //                   Text("Spotify", style: TextStyle(
       //                     fontSize: 18,
       //                     //fontWeight: FontWeight.bold,
       //                     color: Colors.white,
       //                   ),
       //                   ),
       //
       //                 ],
       //               ),
       //               Text("89,046 saves. 3h 19min", style: TextStyle(
       //                 //fontWeight: FontWeight.bold,
       //                 fontSize: 18,
       //                 color: Colors.white,
       //               ),
       //               ),
       //               Row(
       //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
       //                 children: [
       //                   Row(
       //                     children: [
       //                       Padding(
       //                         padding: const EdgeInsets.all(8.0),
       //                         child: Container(
       //                           height: 40,
       //                           width: 30,
       //                           decoration: BoxDecoration(
       //                               border: Border.all( color: Colors.white),
       //                               borderRadius: BorderRadius.circular(8),
       //                               image: DecorationImage(
       //                                 image: AssetImage("assets/spotamil.jpg"),
       //                                 fit: BoxFit.fill,
       //                               ),
       //                               shape: BoxShape.rectangle
       //                           ),
       //                         ),
       //                       ),
       //                       Padding(
       //                         padding: const EdgeInsets.all(8.0),
       //                         child: Icon(Icons.add_circle_outline, color: Colors.white,),
       //                       ),
       //                       Padding(
       //                         padding: const EdgeInsets.all(8.0),
       //                         child: Icon(Icons.arrow_circle_down, color: Colors.white,),
       //                       ),
       //                       Padding(
       //                         padding: const EdgeInsets.all(8.0),
       //                         child: Icon(Icons.more_vert, color: Colors.white,),
       //                       ),
       //                     ],
       //                   ),
       //                   Row(
       //                     children: [
       //                       Padding(
       //                         padding: const EdgeInsets.all(8.0),
       //                         child: Icon(Icons.shuffle_rounded, color: Colors.white,),
       //                       ),
       //                       Padding(
       //                         padding: const EdgeInsets.all(8.0),
       //                         child: Container(
       //                           height: 40,
       //                           width: 50,
       //                           decoration: BoxDecoration(
       //                             border: Border.all(),
       //                             color: Colors.green,
       //                             shape: BoxShape.circle,
       //                           ),
       //                           child: Icon(Icons.play_arrow),
       //                         ),
       //                       )
       //                     ],
       //                   )
       //                 ],
       //               )
       //             ],
       //           ),
       //         ),
       //       ),
       //
       //     ];
       //   },







 