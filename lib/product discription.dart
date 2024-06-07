import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'color.dart';

class discription extends StatefulWidget {
  const discription({super.key});

  @override
  State<discription> createState() => _discriptionState();
}

class _discriptionState extends State<discription> {

  final List _rx = [
    "rx1.png",
    "rx2.png",
    "rx3.png",
    "rx4.png",
    "rx5.png",
    "rx6.png",
  ];
  String dropdownvalue = "1";

   var items = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [],)
          ),
          child: TextField(
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.qr_code_scanner),
          ),
        ],
        backgroundColor: b,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider.builder(
                    itemCount: _rx.length,
                    itemBuilder: (BuildContext context, int itemIndex, int PageViewIndex)
                    {
                      return Container(
                        height: 900,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(_rx[itemIndex]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                    options:CarouselOptions(
                      height: 350,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(seconds: 3),
                      scrollDirection: Axis.horizontal,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      initialPage: 0,
                      viewportFraction: 1,
                      aspectRatio: 16/9,
                      enableInfiniteScroll: true,
                    ),
                ),
                Positioned(
                  top: 20,
                    left: 15,
                    child: Container(
                      height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text("70%off", style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.white,

                          ),
                          ),
                        ),
                    ),
                ),
                Positioned(
                  bottom: 20,
                    left: 20,
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                            child: Icon(Icons.favorite_border, size: 20,),
                        ),
                    ),
                ),
                Positioned(
                  right: 10,
                  top: 5,
                  child: Row(
                    children: [
                      Text("Sponsored", style: TextStyle(fontSize: 12),),
                      Icon(Icons.info, size: 15,),
                    ],
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 23,
                  child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Icon(Icons.share_outlined),
                      ),
                  ),
                ),
              ],
            ),
            DotsIndicator(
                dotsCount: 6,
              position: 0,
              axis: Axis.horizontal,),
            Text("2k+ bought in past month"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Visit the RX store",
                    style: TextStyle(color: Colors.cyan, fontSize: 13),
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("3.6",
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: RatingBar.builder(
                          initialRating: 4,
                          itemCount: 5,
                          itemSize: 15,
                          glow: true,
                          direction: Axis.horizontal,
                          itemBuilder: (context, int ratingIndex)
                          {
                            return Icon(Icons.star, color: Colors.orangeAccent,);

                          },
                          onRatingUpdate: (rating) {}
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("1,234"),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Yamaha RX 100 starting price is Rs. 1,00,000 in India. "
              "Yamaha RX 100 mileage is 35-45 kmpl. "
              "Yamaha RX 100 is expected to launch in India. "
              "Another bike similar to RX 100 is Hero 2.5R Xtunt."),
            ),
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(),
                  bottom: BorderSide(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                      child: Text("Limited time deal", style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("-70%", style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        ),
                        ),
                        Icon(Icons.currency_rupee, size: 20,),
                        Text("10,449", style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("M.R.P.:"),
                        Icon(Icons.currency_rupee, size: 12,),
                        Text("50,000"),
                      ],
                    ),
                    Text("Inclusive of all taxes"),
                  ],
                ),
              ),
            ),
            Container(
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text("Total:", style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                        Icon(Icons.currency_rupee, size: 20,),
                        Text("499", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("FREE delivery", style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 15,
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Wednesday, 17 April.", style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Details", style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 15,
                          ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Or faster delivery", style: TextStyle(
                          fontSize: 15,
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Tomorrow 8 AM - 12 PM.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Order within", style: TextStyle(
                          fontSize: 15,
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("12 hrs 23 mins.",
                            style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Details", style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 15,
                          ),
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        Text("Deliver to Man - Coimbatore 641041", style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 15,
                        ),
                        ),
                      ],
                    ),
                    Text("In stock", style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                    ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButton(
                          value: dropdownvalue,
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                  child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newvalues){
                            setState(() {
                              dropdownvalue = newvalues!;
                            });
                            }
                        ),
                        Row(
                          children: [
                            Icon(Icons.currency_rupee, size: 13,),
                            Text("2000 cashback on each extra unit you buy",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ],
                        )

                          ],
                        ),
                    Card(
                      elevation: 10,
                      color: Colors.yellow,
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: Center(
                            child: Text("Add to cart", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.deepOrange,
                      child: Container(
                        height: 40,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(70),
                        ),
                        child: Center(
                            child: Text("Buy Now", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.lock),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Secure transaction", style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 15,
                          ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ships from"),
                              Text("sold by"),
                            ],
                          ),
                        ),
                        SizedBox(width: 50,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("Amazon"),
                              Text("yamaga"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Details", style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 15,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Gift-wrap available.", style: TextStyle(
                          fontSize: 15,
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("Add to Wish List", style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 15,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




