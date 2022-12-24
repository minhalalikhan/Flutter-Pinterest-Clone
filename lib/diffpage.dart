import 'package:flutter/material.dart';
import 'Navigationbar.dart';

class Diffpage extends StatelessWidget {
  var currentpage = 1;
//Diffpage(this.currentpage);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.amber,
          height: 500,
          width: 500,
          child: Text(
            " different page ",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      bottomNavigationBar: Navigationbar(
        pageindex: currentpage,
      ),
    );
  }
}
