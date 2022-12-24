import 'package:flutter/material.dart';
import 'Feedlist.dart';
import 'Navigationbar.dart';
import 'dart:math';

class Detailspage extends StatelessWidget {
  String link = "";

  Detailspage(this.link);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        //  width: double.infinity,
        // height: MediaQuery.of(context).
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ImageDetail(link: link),
              Morelikethis(),
              //     Feedlist(imagelinks: anotherlist),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navigationbar(
        pageindex: 0,
      ),
    );
  }
}

class Morelikethis extends StatelessWidget {
  Morelikethis({
    Key key,
    // this.anotherlist,
  }) : super(key: key);

  List<String> anotherlist = [
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
    "https://picsum.photos/300?image=${Random().nextInt(70)}",
  ];

  List<String> anothertext = [
    "lorem ipsum",
    "lorem ipsum",
    "lorem ipsum",
    "lorem ipsum",
    "lorem ipsum",
    "lorem ipsum",
    "lorem ipsum",
    "lorem ipsum",
    "lorem ipsum",
    "lorem ipsum",
    "lorem ipsum",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "more like this ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Feedlist(imagelinks: anotherlist, imagetext: anothertext)
        ],
      ),
    );
  }
}

class ImageDetail extends StatelessWidget {
  const ImageDetail({
    Key key,
    @required this.link,
  }) : super(key: key);

  final String link;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.network(
            link,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height: 200,
          )
        ],
      ),
    );
  }
}
