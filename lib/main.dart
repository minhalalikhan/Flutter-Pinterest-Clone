import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Feedlist.dart';
import 'dart:math';
import 'Navigationbar.dart';
import 'package:pinterest_copy/diffpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //var currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  final currentpage = 0;

  final List<String> imagelinks = [
    "https://images.unsplash.com/photo-1561344640-2453889cde5b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y3liZXJwdW5rfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1617678151201-2596079f0b30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGN5YmVycHVua3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fG1hcnZlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1531259683007-016a7b628fc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fG1hcnZlbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1635940960084-3794d7d85f07?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c2NpJTIwZml8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1617978441921-29f82b7aee2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHNjaSUyMGZpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1433086966358-54859d0ed716?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmF0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1439853949127-fa647821eba0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1536431311719-398b6704d4cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fG5hdHVyZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1567095761054-7a02e69e5c43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YWJzdHJhY3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
  ];

  final List<String> imagetxt = [
    "anime nights",
    "blod moon",
    "viva la rev ",
    "batman",
    "astro in ocean",
    "flare shots",
    "forest",
    "lake side",
    "night sky",
    "abstract ",
    "lorem ip",
  ];

  Homepage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "pinterest",
          style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
              padding: EdgeInsets.all(0),
              iconSize: 30,
              icon: Icon(Icons.settings),
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Diffpage()));
              },
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 1.0, 10.0, 5.0),

              // child: GestureDetector(
              //   onTap: () {
              //     print("  you click button !!");
              //   },
              //   child: Container(
              //       child: IconButton(
              //         icon: Icon(Icons.search),
              //         onPressed: () {
              //           print("  you click button !!");
              //         },
              //         iconSize: 25,
              //         padding: EdgeInsets.all(0),
              //       ),
              //       alignment: Alignment.centerLeft,
              //       padding: EdgeInsets.all(5),
              //       height: 35,
              //       width: double.infinity,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           color: Colors.grey[300])),
              // ),
            ),
            Container(
              width: double.infinity,
              //     height: 120,
              color: Colors.white,
              //  padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                    child: Text(
                      "Ideas for you",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black54),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IdeasCard(),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () {
                  return Future.delayed(Duration(seconds: 2));
                },
                child: Container(
                  padding: EdgeInsets.all(6.0),
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Feedlist(
                      imagelinks: imagelinks,
                      imagetext: imagetxt,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Navigationbar(
        pageindex: currentpage,
      ),
    );
  }
}

class IdeasCard extends StatelessWidget {
  IdeasCard({
    Key key,
  }) : super(key: key);

  final List<String> idealist = [
    "https://media.istockphoto.com/photos/futuristic-team-of-businessmen-picture-id1299790857?b=1&k=20&m=1299790857&s=170667a&w=0&h=l9Z5dMRohkiYAADysL8RhFDbYp_Op4jhjlkuHkrcDkg=",
    "https://images.unsplash.com/photo-1635863138275-d9b33299680b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXJvbiUyMG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://media.istockphoto.com/photos/planet-earth-at-night-city-lights-of-europe-glowing-in-the-dark-picture-id1299972938?b=1&k=20&m=1299972938&s=170667a&w=0&h=zMbfARWNqkm0CQLZcQpsUzJ0ES8e0bXc5imrIN4hQxI=",
    "https://images.unsplash.com/photo-1642787696853-763c5a932d39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIyfHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
  ];

  final List<String> ideatext = [
    "renders ",
    "marvel ",
    "space ",
    "night life ",
    "lorem ",
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 4; i++)
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
                alignment: Alignment.bottomCenter,
                height: 80,
                width: 140,
                padding: EdgeInsets.all(10),
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(18.0),
                // ),
                child: Text(
                  ideatext[i],
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(14.0),
                  image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(Colors.black26, BlendMode.darken),
                      fit: BoxFit.cover,
                      image: NetworkImage(idealist[i])),
                )),
          ),
      ],
    );
  }
}
