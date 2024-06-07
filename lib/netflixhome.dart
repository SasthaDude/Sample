import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class netHome extends StatefulWidget {
  const netHome({super.key});

  @override
  State<netHome> createState() => _netHomeState();
}

class _netHomeState extends State<netHome> {

  final List series = [
    "https://m.media-amazon.com/images/M/MV5BZjFlZjljNDctODIyZi00ZmZkLWE4OWYtMDkxMTZkNmM2OGMyXkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_.jpg",
    "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/d7590f135861167.61ef6fb49f8e4.jpg",
    "https://cdna.artstation.com/p/assets/images/images/046/103/336/large/illusion-design-money-heist-poster-min.jpg?1644314844",
    "https://is.zobj.net/image-server/v1/images?r=G0q2_n46fptJPw3g5xKvaofZ6KS4HjLTw2CZMloKIBb1OBQch8jN3Z0V-i2C4N1Ai0QlA_W6IV1i9AFkd7to-rQVIyb5ZVCU1C4BG7-xTnsrooevbk9XucCDoKzNH1WWePOH27xc8pOekBaGlaR-B7svh3pO4IOPNl0TdgPdAskITRAJIYUbTTT4RamCftegQmhKBELTnqZWSOeUHDMPEhS-rrYFxVqXxtxGuNY-QX2p18daG-gS_H1loYU",
    "https://i.pinimg.com/736x/ae/8c/21/ae8c21bc78b35923cdd54ef5868915ef.jpg",
    "https://i.pinimg.com/736x/2e/98/c5/2e98c58c758e3080a2cc84682cd66e4b.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-GL6tJ2QtmnbIWBz18hnbGi4YwoTPMZw_-HwaIV3tv0APwk9YeviLEIwk5uXww1kFcIQ&usqp=CAU",
    "https://i.pinimg.com/564x/1c/e1/31/1ce1311c28db2c95b57a6686ec23c593.jpg",
    "https://i.pinimg.com/736x/8b/55/aa/8b55aa9b71b85499e4971c8d3c707b35.jpg",
    "https://image.tmdb.org/t/p/original/7Ns6tO3aYjppI5bFhyYZurOYGBT.jpg",
    "https://resizing.flixster.com/ysilru6FAJCqgnUkmTqLktrnpSc=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p16314966_b_v10_ad.jpg",
  ];

  final List tamilSeries = [
    "https://m.media-amazon.com/images/M/MV5BYTczNGFhZmMtODc3YS00ZjhmLWIzODEtOWQxMjc4MjMxNzU1XkEyXkFqcGdeQXVyMjQzNDc4NDk@._V1_.jpg",
    "https://m.media-amazon.com/images/M/MV5BZDdiMmQ1ZTMtMDQ0NS00NDE1LTgzYzktZDdkYmU0ZjgzZmM3XkEyXkFqcGdeQXVyMjAwNzczNTU@._V1_.jpg",
    "https://images.plex.tv/photo?size=large-1920&scale=1&url=https%3A%2F%2Fimage.tmdb.org%2Ft%2Fp%2Foriginal%2Fp1VTdQ58aMEE8GkV9eBfu0ebnao.jpg",
    "https://image.tmdb.org/t/p/original/3jnMI7H5820bkAOpSVLckTBT2Wl.jpg",
    "https://middaycdn.s.llnwi.net/Radiocity-images/images/uploads/web-stories/Label1_ws.jpg",
    "https://images.justwatch.com/poster/253774606/s332/season-1",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFGvwFcxSBmWNUJ_yAKuP_k1pcjvjk2K0UJiCD1wFevmMuKPPeZ6jcRc6aMKSoZf5wyV0&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlQxHIC-6hB0cJqB0GQN3-KMARgor15LEo4LgOj7i0WQ&s",
    "https://1847884116.rsc.cdn77.org/telugu/webreviews/fall-web-series-review-4.jpg",
    "https://pbs.twimg.com/media/Esj5ZBHVoAUUXQ7.jpg",
  ];

  final List indianSeries = [
    "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p27018866_b_v8_aa.jpg",
    "https://static.theprint.in/wp-content/uploads/2024/01/ANI-20240116082241.jpg",
    "https://images.justwatch.com/poster/256489953/s332/season-2",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5g-OLKc7tFMuPIaH4UnoS5Qz60IYVT7xO69WWejEBtw&s",
    "https://image.tmdb.org/t/p/original/xvsHIsesEB4qPv8TpkH13g0NFUE.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_Sbub0kKGpMFU6eMVcyit6Bn6ZCPrej8Z8M21Ix7KCTZOVKLHEuLhgNuZxplcV1OYXOM&usqp=CAU",
    "https://metastory.in/wp-content/uploads/2023/12/Farzi-Web-Series-Dialogues.webp",
    "https://assets.gadgets360cdn.com/pricee/assets/product/202308/guns1_1692337032.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.asset("Netflixicon.png"),
        actions: [
          Icon(Icons.search, size: 25, color: Colors.white),
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("TV Shows", style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 35,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("Movies", style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 35,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: Text("Categories", style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
             height: 500,
             width: 330,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30),
               image: DecorationImage(
                 image: NetworkImage("https://images-cdn.ubuy.co.in/655f0b93f79c175825542b76-breaking-bad-poster-24inx36in-61cm-x.jpg"),
                 fit: BoxFit.fill,
               ),
             ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 350,),
                  Text("gore · substance · tobacco use · violence", style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    //fontWeight: FontWeight.bold,
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 13,),
                            Icon(Icons.play_arrow, size: 35,),
                            Text("Play", style: TextStyle(
                                fontSize: 23,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.add, size: 25, color: Colors.white,),
                            Text("My List", style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                            ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("TV Series", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                itemCount: series.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      //height: 80,
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(series[index]),
                          fit: BoxFit.fill,
                        ),
                        //border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Tamil Series", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  itemCount: tamilSeries.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        //height: 80,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(tamilSeries[index]),
                            fit: BoxFit.fill,
                          ),
                          //border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Indian Series", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  itemCount: indianSeries.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        //height: 80,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(indianSeries[index]),
                            fit: BoxFit.fill,
                          ),
                          //border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  }
              ),
            ),

          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
