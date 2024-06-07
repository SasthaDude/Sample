
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'color.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {

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

final List _images = [
  "assets/1.jpg",
  "assets/2.jpg",
 "assets/3.jpg",
  "assets/7.jpg",
  "assets/8.jpg",
];

final List _deal = [

  "assets/4.jpg",
  "assets/5.jpg",
  "assets/16.jpg",
  "assets/9.jpg",

];
final List _text = [

  "70%off! Limited time deal",
  "80%off! Limited time deal",
  "90%off! Limited time deal",
  "60%off! Limited time deal",


];

//final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search),
                hintText: "search amazon.in",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: Container(
                  width: 50,
                  child: Row(
                    children: [
                      Icon(Icons.filter_center_focus_rounded),
                      Icon(Icons.mic),
                    ],
                  ),
                ),
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.qr_code_scanner),
            ),
          ],
          backgroundColor: b,
        ),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text("Deliver to Man - Coimbatore 641007"),
                    ],
                  ),
                ),
               Container(
                 height: 120,
                 child: ListView.builder(
                     itemCount: _imagesFiles.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder:(BuildContext context, int index)
                     {
                       return Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                         Container(
                         height: 50,
                         width:60,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage(_imagesFiles[index]),
                             fit: BoxFit.fill
                           ),
                           shape: BoxShape.circle,

                         ),
                                            ),
                             Text(style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                  _imageText[index]
                              // "hello"
                             ),
                                            ]
                         ),
                       );
                     }

                 ),
               ),
               CarouselSlider.builder(
                 itemCount: _images.length,
                 itemBuilder: (BuildContext context, int itemIndex, int PageViewIndex)
                 {
                   return Container(
                     height: 200,
                      width: double.infinity,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage(_images[itemIndex]),
                         fit: BoxFit.fill,
                       ),
                     ),
                     //child: _images[itemIndex],
                   );
                 },
                 options: CarouselOptions(
                   height: 200,
                   aspectRatio: 16/9,
                   viewportFraction: 1,
                   initialPage: 0,
                   scrollDirection: Axis.horizontal,
                   enableInfiniteScroll: true,
                   autoPlay: true,
                   // animateToClosest: false,
                   autoPlayInterval: Duration(seconds: 5),
                   autoPlayAnimationDuration: Duration(seconds: 1),
                   autoPlayCurve: Curves.fastOutSlowIn,

                   // enlargeCenterPage: true,
                 ),

               ),
               Container(
                 height: 150,
                 child: ListView.builder(
                     itemCount: 7,
                     scrollDirection: Axis.horizontal,
                     itemBuilder:(BuildContext context, int index)
                     {
                       return Padding(
                         padding: const EdgeInsets.all(4.0),
                         child: Container(
                           width: 150,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage("assets/amazon.jpg"),
                               fit: BoxFit.fill,
                             )
                           ),
                           //child:  Image.asset("assets/abc.png"),
                         ),
                       );
                     }
                 ),
               ),
               ListTile(
                 title: Text("Deals for you", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                 subtitle: Container(
                   height: 450,
                   width: double.infinity,
                   child: GridView.builder(
                     physics: NeverScrollableScrollPhysics(),
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                           mainAxisSpacing: 5,
                           crossAxisSpacing: 5,
                       ),
                       itemCount: 4,
                       itemBuilder: (context, index)
                       {
                         return Column(
                           children: [
                             Container(
                               height: 120,
                               width: double.infinity,
                               decoration: BoxDecoration(
                                 border: Border.all(),
                                 image: DecorationImage(
                                   image: AssetImage(_deal[index]),
                                   fit: BoxFit.fill,
                                 ),
                               ),
                               //child: _deal[index],
                             ),
                             SizedBox(height: 5,),
                             Text(_text[index], style: TextStyle(fontSize: 13,
                                  color: Colors.white,
                                 backgroundColor: Colors.red),
                             ),
                           ],
                         );

                       }
                   ),
                 ),
               ),
              ],
            ),
        ),
        backgroundColor: a,
      ),
    );
  }
}


