import 'package:flutter/material.dart';

class spotpage extends StatefulWidget {
  const spotpage({super.key});

  @override
  State<spotpage> createState() => _spotpageState();
}

class _spotpageState extends State<spotpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Best of all Time", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              ),
            ),
        backgroundColor: Color(0xffac255e),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              // title: Text("Best of all Time", style: TextStyle(
              // color: Colors.red,
              // fontWeight: FontWeight.bold,
              // fontSize: 20,
              // ),
              // ),
              expandedHeight: 650,
              //toolbarHeight: 60,
              //floating: true,
             // pinned: true,
              //snap: false,
              //stretch: true,
              forceElevated: innerBoxIsScrolled,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                // title:  Text("Best of all Time", textScaleFactor: 1,
                //   style: TextStyle(
                //     color: Colors.black,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                background:  Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff870160),
                          Color(0xffac255e),
                          Color(0xffca485c),
                          Color(0xffe16b5c),
                          Color(0xfff39060),
                          Color(0xffffb56b),
                        ]
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Row(
                        //   children: [
                        //     Icon(Icons.arrow_back, color: Colors.white,),
                        //     Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Text("Best of all Time", style: TextStyle(
                        //         color: Colors.black,
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 20,
                        //       ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 300,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.search, color: Colors.white,),
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
                                        border: Border.all(color: Colors.white),
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
                                  child: Icon(
                                    Icons.add_circle_outline, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.arrow_circle_down, color: Colors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.more_vert, color: Colors.white,),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.shuffle_rounded, color: Colors.white,),
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
            ),
          ];
        },
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                     Color(0xffffb56b),
                    Color(0xfff39060),
                     Color(0xffffb56b),
                     Color(0xffffb56b),
                     Color(0xffe16b5c),
                   // Color(0xff870160),
                    //Color(0xffac255e),
                     Color(0xffca485c),
                     Color(0xffca485c),
                  ]
              ),
          ),
          child: ListView.builder(
            itemCount: 15,
              itemBuilder: (BuildContext context, int index)
          {
      return  Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            decoration: BoxDecoration(
              // border: Border.all(),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/spotify.png")
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    //child: Image.asset("assets/spotify.png")
                  ),
                ),
                Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),
        ],
      );
          }




          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Column(
          //         children: [
          //         Container(
          //         height: 70,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     // border: Border.all(),
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           height: 60,
          //           width: 50,
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //                 image: AssetImage("assets/spotify.png")
          //             ),
          //             shape: BoxShape.rectangle,
          //           ),
          //           //child: Image.asset("assets/spotify.png")
          //         ),
          //       ),
          //       Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.black,
          //       ),
          //       ),
          //       Icon(Icons.more_vert),
          //     ],
          //   ),
          //         ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   Container(
          //     height: 70,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       // border: Border.all(),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             height: 60,
          //             width: 50,
          //             decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage("assets/spotify.png")
          //               ),
          //               shape: BoxShape.rectangle,
          //             ),
          //             //child: Image.asset("assets/spotify.png")
          //           ),
          //         ),
          //         Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //           fontWeight: FontWeight.bold,
          //           color: Colors.black,
          //         ),
          //         ),
          //         Icon(Icons.more_vert),
          //       ],
          //     ),
          //   ),
          //   // Container(
          //   //   height: 70,
          //   //   width: double.infinity,
          //   //   decoration: BoxDecoration(
          //   //     // border: Border.all(),
          //   //   ),
          //   //   child: Row(
          //   //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   //     children: [
          //   //       Padding(
          //   //         padding: const EdgeInsets.all(8.0),
          //   //         child: Container(
          //   //           height: 60,
          //   //           width: 50,
          //   //           decoration: BoxDecoration(
          //   //             image: DecorationImage(
          //   //                 image: AssetImage("assets/spotify.png")
          //   //             ),
          //   //             shape: BoxShape.rectangle,
          //   //           ),
          //   //           //child: Image.asset("assets/spotify.png")
          //   //         ),
          //   //       ),
          //   //       Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //   //         fontWeight: FontWeight.bold,
          //   //         color: Colors.black,
          //   //       ),
          //   //       ),
          //   //       Icon(Icons.more_vert),
          //   //     ],
          //   //   ),
          //   // ),
          //   // Container(
          //   //   height: 70,
          //   //   width: double.infinity,
          //   //   decoration: BoxDecoration(
          //   //     // border: Border.all(),
          //   //   ),
          //   //   child: Row(
          //   //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   //     children: [
          //   //       Padding(
          //   //         padding: const EdgeInsets.all(8.0),
          //   //         child: Container(
          //   //           height: 60,
          //   //           width: 50,
          //   //           decoration: BoxDecoration(
          //   //             image: DecorationImage(
          //   //                 image: AssetImage("assets/spotify.png")
          //   //             ),
          //   //             shape: BoxShape.rectangle,
          //   //           ),
          //   //           //child: Image.asset("assets/spotify.png")
          //   //         ),
          //   //       ),
          //   //       Text("pyara mera veera- from", style: TextStyle(fontSize: 20,
          //   //         fontWeight: FontWeight.bold,
          //   //         color: Colors.black,
          //   //       ),
          //   //       ),
          //   //       Icon(Icons.more_vert),
          //   //     ],
          //   //   ),
          //   // ),
          //         ],
          //       ),
          // ),
        ),
      ),
      ),
    );
  }
}
