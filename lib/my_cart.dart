import "package:curved_navigation_bar/curved_navigation_bar.dart";
import 'package:flutter/material.dart';
import "package:flutter_ui_practice_app/home_page.dart";
import 'home_page.dart';
import "category.dart";

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int _currentIndex = 2;
  ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        //you can do anything here
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {}
  }

  void onTapFunction(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Category()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.add, size: 30),
                Icon(Icons.shopping_cart, size: 30),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                child: Center(
                  child: Text("My Cart",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      )),
                ),
              ),
            ),
SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  controller: _controller,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 5.0,
                      color: Color(0xFFF2F2F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      child: SizedBox(
                        height: 100,
                        child: Center(
                          child: ListTile(
                            leading: Container(
                              width: 80,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Color(0xffE0F7EB),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset("assets/assets/banana.png"),
                            ),
                            title: Text(
                              "Banana",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Container(
                              width: 55,//50,
                              height: 40,//40,
                              child: Column(
                                children: [
                                  Text("\$2.8",
                                      style: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.lineThrough,
                                      )),
                                  SizedBox(height: 2),
                                  Text("\$2.0",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                            trailing: Container(
                              width: 70,//60
                              height: 80,//
                              child: Row(
                                children: [
                                  Icon(Icons.delete, color: Colors.red),
                                  Text("1"),
                                  Icon(Icons.add),
                                ],
                              ),
                            ),
                            // title: Container(
                            //   height: 100,
                            //   child: Column(
                            //     mainAxisAlignment: MainAxisAlignment.center,
                            //     children: [
                            //       Text(
                            //         "Fresh Potatoes",
                            //         style: TextStyle(
                            //           fontWeight: FontWeight.bold,
                            //           fontSize: 20,
                            //         ),
                            //       )
                            //     ],
                            //   ),
                            // ),
                            // trailing: Row(
                            //   mainAxisAlignment: MainAxisAlignment.end,
                            //   children: [
                            //     Icon(Icons.delete),
                            //     Text("1"),
                            //     Icon(Icons.add),
                            //   ],
                            // ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            // Stack(
            //   children: [
            //     Container(
            //       width: 500,
            //       height: 100,
            //       decoration: BoxDecoration(
            //         color: Colors.blue, //Color(0xFFF2F2F2),
            //         borderRadius: BorderRadius.circular(20),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 25.0, left: 20),
            //       child: Container(
            //         width: 50,
            //         height: 50,
            //         decoration: BoxDecoration(
            //           color: Colors.green, //Color(0xFFF2F2F2),
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //       ),
            //     ),
            //     Column(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(left: 100.0, top: 20),
            //           child: Text("Fresh Potatoes",
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 20,
            //           )),
            //         ),
            //         Text("\$10",
            //             style: TextStyle(
            //               fontSize: 20,
            //             )),
            //       ],
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(left: 300.0, top: 40),
            //       child: Icon(Icons.category),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: [
          Icon(
            Icons.shopping_cart,
            size: 30.0,
            color: Colors.green,
          ),
          Icon(
            Icons.email,
            size: 30.0,
            color: Colors.green,
          ),
          Icon(
            Icons.list,
            size: 30.0,
            color: Colors.green,
          ),
          Icon(
            Icons.add,
            size: 30.0,
            color: Colors.green,
          ),
        ],
        onTap: onTapFunction,
        index: _currentIndex,
        animationDuration: Duration(milliseconds: 300),
        animationCurve: Curves.easeOutCubic,
      ),
    );
  }
}
