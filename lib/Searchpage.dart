import 'package:flutter/material.dart';
import 'Navigationbar.dart';

class Searchpage extends StatefulWidget {
  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  bool keyboardvisible = false;

  final myController = TextEditingController();
  final List<String> searchhistory = [
    "3d renders",
    "cosmos",
    "tokyo ghoul",
    "ui ideas",
    "robot concept",
    "dystopic art",
    "abstract renders",
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 50.0, left: 10, right: 10, bottom: 10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 300,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.grey[300],
                      ),
                      child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          style: TextStyle(fontSize: 20),
                          controller: myController,
                          onSubmitted: (value) {
                            searchhistory.insert(0, value);
                          },
                          cursorColor: Colors.red,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                            hintText: 'Search for ideas',
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                            suffixIcon: Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                            ),
                            contentPadding: EdgeInsets.only(bottom: 10),
                          )),
                    ),
                    TextButton(
                        onPressed: () {
                          myController.text = "";
                        },
                        child: Text(
                          "cancel",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < searchhistory.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 10, right: 10, bottom: 15),
                          child: Container(
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(
                                      Icons.search,
                                      size: 30,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {}),
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    searchhistory[i],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                )),
                                IconButton(
                                    icon: Icon(
                                      Icons.close,
                                      size: 30,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        searchhistory.removeAt(i);
                                      });
                                    })
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Navigationbar(
          pageindex: 3,
        ),
      ),
    );
  }
}
