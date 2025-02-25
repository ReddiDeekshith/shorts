import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var a = [Colors.red, Colors.blue, Colors.green];
  var b = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(decoration: BoxDecoration(color: Colors.black)),
              Positioned(
                top: 50,
                left: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shorts',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.55),
                    Icon(Icons.search_sharp, color: Colors.white, size: 30),
                    SizedBox(width: 20),
                    Icon(Icons.more_vert, color: Colors.white, size: 30),
                  ],
                ),
              ),
              Positioned(
                top: 90,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height - 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(b[index]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      bottombar(Icons.thumb_up, "1.4M"),
                      SizedBox(height: 20),
                      bottombar(Icons.thumb_down, "Dislike"),
                      SizedBox(height: 20),
                      bottombar(Icons.comment_outlined, "4096"),
                      SizedBox(height: 20),
                      bottombar(Icons.reply, "share"),
                      SizedBox(height: 20),
                      bottombar(Icons.replay_10_sharp, "19K"),
                      SizedBox(height: 20),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: AssetImage(b[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 15,
                child: Row(
                  children: [
                    Icon(Icons.music_note_outlined, color: Colors.white),
                    SizedBox(width: 5),
                    Text(
                      'School Rooftop (Bird Sounds) - Kansaar',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 50,
                left: 20,
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      'He tells me when hes thirsty... 🥰',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 80,
                left: 20,
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage(b[index]),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Text(
                      '@ThePlantBoys',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          'Subscribe',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 130,
                left: 20,
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(158, 57, 56, 56),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search_rounded, color: Colors.white, size: 20),
                      SizedBox(width: 5),
                      Text(
                        'Search "how to water plants',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                left: 0,
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        card(Icons.subscriptions, "Subscription"),
                        SizedBox(width: 10),
                        card(Icons.wifi, "Live"),
                        SizedBox(width: 10),
                        card(Icons.trending_up_rounded, "Subscription"),
                        SizedBox(width: 10),
                        card(Icons.luggage_outlined, "Saved"),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black,
          //border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 20),
              bottombar(Icons.home, "home"),
              Spacer(),
              bottombar(Icons.video_collection_rounded, "shorts"),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, left: 5),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color.fromARGB(255, 57, 56, 56),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
              Spacer(),
              bottombar(Icons.subscriptions, "subscriptions"),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage(b[2]),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'You',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget card(icon, text) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(68, 57, 56, 56),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 20),
          SizedBox(width: 5),
          Text(text, style: TextStyle(fontSize: 14, color: Colors.white)),
        ],
      ),
    );
  }

  Widget bottombar(icon, text) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        Text(text, style: TextStyle(fontSize: 10, color: Colors.white)),
      ],
    );
  }
}
