import 'package:flutter/material.dart';
import 'package:pinterest_copy/diffpage.dart';
//import 'package:pinterest_copy/main.dart';
import 'Searchpage.dart';

class Navigationbar extends StatelessWidget {
  final int pageindex;

  const Navigationbar({Key key, this.pageindex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 40),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
            iconSize: 36,
            icon: Icon(
              Icons.home,
              color: pageindex == 0 ? Colors.black : Colors.grey[500],
            ),
            onPressed: () {
              if (pageindex != 0)
                Navigator.pop(context);
              else
                Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
          IconButton(
            padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
            iconSize: 36,
            icon: Icon(
              Icons.search,
              color: pageindex == 3 ? Colors.black : Colors.grey[500],
            ),
            onPressed: () {
              if (pageindex != 3)
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Searchpage()));
            },
          ),
          IconButton(
            padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
            iconSize: 36,
            icon: Icon(
              Icons.add_rounded,
              color: Colors.grey[500],
            ),
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 300,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "idea pin",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "pin",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "board",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          IconButton(
            padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
            iconSize: 36,
            icon: Icon(
              Icons.messenger,
              color: pageindex == 4 ? Colors.black : Colors.grey[500],
            ),
            onPressed: () {
              if (pageindex != 4)
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Diffpage()));
            },
          ),
          IconButton(
            padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
            iconSize: 36,
            icon: Icon(
              Icons.circle,
              color: pageindex == 1 ? Colors.black : Colors.grey[500],
            ),
            onPressed: () {
              if (pageindex != 1)
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Diffpage()));
            },
          ),
        ],
      ),
    );
  }
}
