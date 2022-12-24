import 'package:flutter/material.dart';
import 'dart:math';
import 'package:pinterest_copy/Detailspage.dart';

List<double> height = [250, 350, 450];

double randomheight() {
  return height[Random().nextInt(height.length)];
}

class Feedlist extends StatelessWidget {
  const Feedlist({
    Key key,
    @required this.imagelinks,
    @required this.imagetext,
  }) : super(key: key);

  final List<String> imagelinks;
  final List<String> imagetext;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (var i = 0; i < 5; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0, left: 4, right: 4),
                  child: Column(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Detailspage(imagelinks[i])));
                            },
                            child: Image.network(
                              imagelinks[i],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(18.0)),
                        // height: randomheight(),
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            imagetext[i],
                            overflow: TextOverflow.ellipsis,
                          )),
                          IconButton(
                              icon: Icon(Icons.more_horiz), onPressed: () {})
                        ],
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (var i = 0; i < 5; i++)
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0, left: 4, right: 4),
                  child: Column(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Detailspage(imagelinks[i + 5])));
                            },
                            child: Image.network(
                              imagelinks[i + 5],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(18.0)),
                        // height: randomheight(),
                        width: double.infinity,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            imagetext[i + 5],
                            overflow: TextOverflow.ellipsis,
                          )),
                          IconButton(
                              icon: Icon(Icons.more_horiz), onPressed: () {})
                        ],
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
