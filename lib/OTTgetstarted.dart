import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample/Netflixlogin.dart';
import 'package:sample/logetstart.dart';

class getstarted extends StatefulWidget {
  const getstarted({super.key});

  @override
  State<getstarted> createState() => _getstartedState();
}

class _getstartedState extends State<getstarted> {

  int currentPage =0;
  List get = [
    "assets/get1.png",
    "assets/get3.jpg",
    "assets/get1.png",
    "assets/escape get.jpg",
  ];
  List textI = [
    "Unlimited entertainment, one low price",
    "Download and watch offline",
    "Watch everywhere",
    "Cancel online at any time",
  ];
  List textT = [
    "All of Netflix, starting at just ₹149",
    "Always have something to watch",
    "Stream on your phone, laptop, TV and more",
    "Join today, no reason to wait",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset("assets/Netflixicon.png"),
        actions: [
          Text("PRIVACY", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),),
          SizedBox(width: 20,),
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.push(context,
                    MaterialPageRoute(
                    builder: (context) => netlog()
                    ),
                );
              });
            },
              child: Text("LOGIN", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),)),
          SizedBox(width: 20,),
          Icon(Icons.more_vert, size: 30, color: Colors.white,),
        ],
      ),
      body: Column(
        children: [
          CarouselSlider.builder(
              itemCount: get.length,
              itemBuilder: (BuildContext context, int itemIndex, int PageViewIndex)
              {
                return Container(
                  //height: 1250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(get[itemIndex]),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Align(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(textI[itemIndex], style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white,
                        ), textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20,),
                        Text(textT[itemIndex], style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white,
                        ), textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 15,),
                      ],
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: 750,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(seconds: 3),
                scrollDirection: Axis.horizontal,
                autoPlayCurve: Curves.fastOutSlowIn,
                initialPage: 0,
                viewportFraction: 1,
                aspectRatio: 16/9,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason){
                  setState(() {
                    currentPage = index;
                  });
                }
              ),
          ),
          SizedBox(height: 10,),
          DotsIndicator(
            dotsCount: get.length,
            position: currentPage.toInt(),
            //axis: Axis.horizontal,
          ),
          Card(
            elevation: 15,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => loget()
                    ),
                  );
                });
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.red.shade900,
                ),
                child: Center(child: Text("Get Started", style: TextStyle(fontSize: 20, color: Colors.white),)),
              ),
            ),
          ),
        ],
      ),

    );
  }
}


class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
          () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => getstarted()),
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/splashnet.png"),
    );
  }
}



