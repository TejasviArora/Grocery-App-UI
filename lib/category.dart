import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'home_page.dart';
import 'my_cart.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _currentIndex = 1;
  double widthContainer = 75;
  double heightContainer = 75;
  double kImageWidth = 15;
  double kImageHeight = 15;

  final tileImage= Image.asset("assets/assets/banana.png",
  width: 15,
  height: 15,
  );

  final kDecoration = BoxDecoration(
    color: Color(0xFFF2F2F2),
    borderRadius: BorderRadius.circular(20),
  );

  void onTapFunction(int index) {
    setState(() {
      _currentIndex = index;
    });

      switch(index) {
        case 0:
          Navigator.push(context, MaterialPageRoute( builder: (context)=> MyHomePage()));
          break;
        case 2:
          Navigator.push(context, MaterialPageRoute( builder: (context)=> MyCart()));
          break;

      }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.add, size: 30),
                Icon(Icons.shopping_cart, size: 30),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Container(
                height: 35,
                width: 300,
                alignment: Alignment(-1.0, 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: -10.0,
                      blurRadius: 10.0,
                      offset: Offset(0.0, 10.0),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.mic),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: TextField(

                        decoration: InputDecoration(
                          hintText: "search here",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 260.0),
                      child: Icon(Icons.search),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Fresh Food",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 7.0),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xffE0F7EB),
                            borderRadius: BorderRadius.only( topLeft: Radius.circular(22),topRight: Radius.circular(22) )
                          ),
                          child: Center(child: Text("Vegetables & eggs",
                              style: TextStyle(fontWeight: FontWeight.w600))),
                          width: 150.0,
                          height: 80,
                        ),
                        SizedBox(height: 1.5),
                        Container(
                          child: Center(child: Text("flours",style: TextStyle(fontWeight: FontWeight.w600))),
                          color:Color(0xffE0F7EB),
                          width: 150.0,
                          height: 80,
                        ),SizedBox(height: 1.5),
                        Container(
                          child: Center(child: Text("fruits and sweets",style: TextStyle(fontWeight: FontWeight.w600))),
                          color: Color(0xffE0F7EB),
                          width: 150.0,
                          height: 80,
                        ),SizedBox(height: 1.5),
                        Container(
                          child: Center(child: Text("dairy products",style: TextStyle(fontWeight: FontWeight.w600))),
                          color: Color(0xffE0F7EB),
                          width: 150.0,
                          height: 80,
                        ),SizedBox(height: 1.5),
                        Container(
                          child: Center(child: Text("staples",style: TextStyle(fontWeight: FontWeight.w600))),
                          color: Color(0xffE0F7EB),
                          width: 150.0,
                          height: 80,
                        ),SizedBox(height: 1),
                      ],
                    ),
                  ),
                ]),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fresh Fruits",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22.0,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            decoration: kDecoration,
                            child: tileImage,
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            decoration: kDecoration,
                            width: widthContainer,
                            height: heightContainer,
                            child: tileImage,
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            decoration: kDecoration,
                            child: tileImage,
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            decoration: kDecoration,
                            width: widthContainer,
                            height: heightContainer,
                            child: tileImage,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 115.0),
                        child: InkWell(
                          onTap: () {},
                          child: Text("See more",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 12,
                              )),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Fresh Fruits",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 22.0,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            decoration: kDecoration,
                            child: tileImage,
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            decoration: kDecoration,
                            width: widthContainer,
                            height: heightContainer,
                            child:tileImage,
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            decoration: kDecoration,
                            child:tileImage,
                          ),
                          SizedBox(width: 15.0),
                          Container(
                            decoration: kDecoration,
                            width: widthContainer,
                            height: heightContainer,
                            child: tileImage,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 115.0),
                        child: InkWell(
                          onTap: () {},
                          child: Text("See more",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 12,
                              )),
                        ),
                      ),
                      SizedBox(height: 10.0),

                    ]),
              ],
            ),
          ],
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
      ),
    );
  }
}
