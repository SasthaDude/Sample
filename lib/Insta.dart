import 'package:flutter/material.dart';

import 'color.dart';

class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {

  final List _imagesFiles = [
    "assets/ducati1.jpg",
    "assets/honda.png",
    "assets/ktm.png",
    "assets/harley.png",
    "assets/triumph.png",
    "assets/zero.png",
    "assets/suzuki.jpg",
    "assets/yamaga.jpg",
    "assets/16.jpg",
    "assets/hero.png"

  ];
  final List<String> _imageText = [
    "Ducati",
    "Honda",
    "KTM",
    "Harley",
    "Triumph",
    "Zero",
    "Suzuki",
    "Yamaha",
    "RX",
    "Hero",
  ];
  final List _deal = [

    "assets/4.jpg",
    "assets/5.jpg",
    "assets/16.jpg",
    "assets/9.jpg",
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/3.jpg",
    "assets/7.jpg",
    "assets/8.jpg",
    "assets/ducati1.jpg",
    "assets/honda.png",
    "assets/ktm.png",
    "assets/harley.png",
    "assets/triumph.png",
    "assets/zero.png",
    "assets/suzuki.jpg",
    "assets/yamaga.jpg",
    "assets/16.jpg",
    "assets/hero.png"

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Scaffold(
          backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back, color: Colors.white,),
              Text("tirupurtalks", style: TextStyle(
                color: Colors.white,
              ),
              ),
              SizedBox(width: 90,),
              Icon(Icons.notification_important_outlined, color: Colors.white,),
              Icon(Icons.more_vert, color: Colors.white,),
            ],
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
            {
              return [
                SliverAppBar(
                  backgroundColor: Colors.black,
                  // title: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Icon(Icons.arrow_back, color: Colors.white,),
                  //     Text("tirupurtalks", style: TextStyle(
                  //       color: Colors.white,
                  //     ),
                  //     ),
                  //     SizedBox(width: 90,),
                  //     Icon(Icons.notification_important_outlined, color: Colors.white,),
                  //     Icon(Icons.more_vert, color: Colors.white,),
                  //   ],
                  // ),
                  expandedHeight: 480,
                   pinned: true,
                  floating: false,
                  forceElevated: innerBoxIsScrolled,
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                   background: Column(
                     children: [
                       //SizedBox(height: 70,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Container(
                             height: 70,
                             width: 80,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                                 image: AssetImage("rx5.png"),
                                 fit: BoxFit.fill,
                               ),
                               shape: BoxShape.circle,
                             ),
                           ),
                           Column(
                             children: [
                               Text("5,432", style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                               ),),
                               Text("posts", style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold,
                               ),),
                             ],
                           ),
                           Column(
                             children: [
                               Text("74K", style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                               ),),
                               Text("followers", style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold,
                               ),),
                             ],
                           ),
                           Column(
                             children: [
                               Text("123", style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                               ),),
                               Text("following", style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 15,
                                 fontWeight: FontWeight.bold,
                               ),),
                             ],
                           )
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("TirupurTalks", style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 20,
                             ),),
                             Text("Digital creator", style: TextStyle(
                               color: Colors.white,
                               //fontWeight: FontWeight.bold,
                               fontSize: 20,
                             ),),
                             Text("Tirupur's Largest Digital News Platform | Explore News, Events, | Tirupur, Coimbatore, Erode | DM for promotion 1236547890",
                               style: TextStyle(
                               color: Colors.white,
                               //fontWeight: FontWeight.bold,
                               fontSize: 20,
                             ),),
                             Row(
                               children: [
                                 Icon(Icons.link, color: Colors.white,),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text("www.youtube.com/@TirupurTalks, and 2 more",
                                     style: TextStyle(
                                     color: Colors.white,
                                     //fontWeight: FontWeight.bold,
                                     fontSize: 15,
                                   ),),
                                 ),
                               ],
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Container(
                                   height: 40,
                                   width: 165,
                                   decoration: BoxDecoration(
                                     border: Border.all(),
                                     color: Colors.blue,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Center(
                                     child: Text("Follow", style: TextStyle(
                                       fontSize: 20,
                                       color: Colors.white,
                                       fontWeight: FontWeight.bold,
                                     ),),
                                   ),
                                 ),
                                 Container(
                                   height: 40,
                                   width: 165,
                                   decoration: BoxDecoration(
                                     border: Border.all(),
                                     color: Colors.grey,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Center(
                                     child: Text("Message", style: TextStyle(
                                       fontSize: 20,
                                       color: Colors.white,
                                       fontWeight: FontWeight.bold,
                                     ),),
                                   ),
                                 ),
                                 Container(
                                   height: 40,
                                   width: 50,
                                   decoration: BoxDecoration(
                                     border: Border.all(),
                                     color: Colors.grey,
                                     borderRadius: BorderRadius.circular(10),
                                   ),
                                   child: Icon(Icons.person_add, color: Colors.white,),
                                 ),
                               ],
                             ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Container(
                                 height: 100,
                                 child: ListView.builder(
                                   itemCount: _imagesFiles.length,
                                     scrollDirection: Axis.horizontal,
                                     itemBuilder: (BuildContext context, int index)
                                   {
                                     return Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: Column(
                                         children: [
                                           Container(
                                             height: 60,
                                             width: 70,
                                             decoration: BoxDecoration(
                                               image: DecorationImage(
                                                 image: AssetImage(_imagesFiles[index]),
                                                 fit: BoxFit.fill,
                                               ),
                                               shape: BoxShape.circle,
                                             ),
                                           ),
                                           Text(_imageText[index],
                                             style: TextStyle(
                                               color: Colors.white,
                                                 fontSize: 15, fontWeight: FontWeight.bold,
                                             ),),
                                         ],
                                       ),
                                     );
                                   }
                                 ),
                               ),
                             )
                           ],
                         ),
                       )
                     ],
                   ),
                  ),
                  bottom: TabBar(
                    indicatorColor: Colors.orange,
                    tabs: [
                      Tab(icon: Icon(Icons.grid_on_sharp),),
                      Tab(icon: Icon(Icons.tiktok_outlined),),
                      Tab(icon: Icon(Icons.person_pin_circle_sharp),),
                    ],
                  ),
                ),
              ];
            }, body: TabBarView(
            children: [
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: _deal.length,
                  itemBuilder: (context, index)
            {
              return Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(_deal[index]),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: _deal.length,
                  itemBuilder: (context, index)
                  {
                    return Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(_deal[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemCount: _deal.length,
                  itemBuilder: (context, index)
                  {
                    return Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(_deal[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }
              ),
            ],
          ),
          ),
        )
      ),
    );
  }
}


