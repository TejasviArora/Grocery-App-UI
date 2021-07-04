import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_practice_app/category.dart';
import 'package:flutter_ui_practice_app/my_cart.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool pageIndex;
  int _currentIndex = 0;


  void onTapFunction(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch(index) {
      case 1:
        Navigator.push(context, MaterialPageRoute( builder: (context)=> Category()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute( builder: (context)=> MyCart()));
        break;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.add, size: 30),
                Icon(Icons.shopping_cart, size: 30),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Grocery",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 50.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "At Your",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 50.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Doorstep",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 50.0,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              height: 40.0,
              margin: EdgeInsets.only(left: 20.0, right: 12.0),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0, // soften the shadow
                    spreadRadius: 3.0, //extend the shadow
                  )
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.local_pizza),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Delivery to:",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Text(
                    "your address is here",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 15.0),
                  Text("CHANGE",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.5,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Essential Deals",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Container(
                width: 350,
                height: 115,
                decoration: BoxDecoration(
                  color: Color(0xFFE0F7EB),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Fresh Fruits \n Upto",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              )),
                          Text("25%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.black,
                              )),
                          Text("OFF",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(width: 70.0),
                    Image.asset("assets/assets/banana.png",
                    width: 140,
                    height: 140,),

                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Container(
                width: 350,
                height: 115,
                decoration: BoxDecoration(
                  color: Color(0xFFD2ECF3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, top: 12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Fresh Fruits \n Upto",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              )),
                          Text("25%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                                color: Colors.black,
                              )),
                          Text("OFF",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(width: 70.0),
                    Image.asset("assets/assets/banana.png",
                      width: 140,
                      height: 140,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        onTap: onTapFunction,
        backgroundColor: Colors.transparent,
        items: [
          Icon(Icons.shopping_cart, size:30.0, color:Colors.green,),
          Icon(Icons.email, size:30.0, color:Colors.green, ),
          Icon(Icons.list, size:30.0, color:Colors.green,),
          Icon(Icons.add, size:30.0, color:Colors.green,),
        ],
          index: _currentIndex,
          animationDuration: Duration(milliseconds: 300),
          animationCurve: Curves.easeOutCubic,
      ),
    );
  }
}

