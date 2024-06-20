import 'package:flutter/material.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:get/get.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    // final sw = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: MyAppBar(),
      appBar: CustomAppbar(),
      body: Stack(children: [
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: Get.width,
            height: Get.height,
            // color: Colors.redAccent,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset("assets/images/img_.png"),
                      Container(
                        width: double.infinity,
                        color: Color.fromARGB(100, 22, 44, 33),
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(40),
                        child: Text(
                          "Hello Everyone! This is FlutterCampus",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset("assets/images/img_.png"),
                      Container(
                        width: double.infinity,
                        color: Color.fromARGB(100, 22, 44, 33),
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(40),
                        child: Text(
                          "Hello Everyone! This is FlutterCampus",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset("assets/images/img_.png"),
                      Container(
                        width: double.infinity,
                        color: Color.fromARGB(100, 22, 44, 33),
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(40),
                        child: Text(
                          "Hello Everyone! This is FlutterCampus",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Image.asset("assets/images/img_.png"),
                      Container(
                        width: double.infinity,
                        color: Color.fromARGB(100, 22, 44, 33),
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(40),
                        child: Text(
                          "Hello Everyone! This is FlutterCampus",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  // Stack(
                  //   children: [
                  //     Image.asset("assets/images/img_.png"),
                  //     Container(
                  //       width: double.infinity,
                  //       color: Color.fromARGB(100, 22, 44, 33),
                  //       margin: EdgeInsets.all(20),
                  //       padding: EdgeInsets.all(40),
                  //       child: Text(
                  //         "Hello Everyone! This is FlutterCampus",
                  //         style: TextStyle(fontSize: 25, color: Colors.white),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: [
                  //     Image.asset("assets/images/img_.png"),
                  //     Container(
                  //       width: double.infinity,
                  //       color: Color.fromARGB(100, 22, 44, 33),
                  //       margin: EdgeInsets.all(20),
                  //       padding: EdgeInsets.all(40),
                  //       child: Text(
                  //         "Hello Everyone! This is FlutterCampus",
                  //         style: TextStyle(fontSize: 25, color: Colors.white),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: [
                  //     Image.asset("assets/images/img_.png"),
                  //     Container(
                  //       width: double.infinity,
                  //       color: Color.fromARGB(100, 22, 44, 33),
                  //       margin: EdgeInsets.all(20),
                  //       padding: EdgeInsets.all(40),
                  //       child: Text(
                  //         "Hello Everyone! This is FlutterCampus",
                  //         style: TextStyle(fontSize: 25, color: Colors.white),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: [
                  //     Image.asset("assets/images/img_.png"),
                  //     Container(
                  //       width: double.infinity,
                  //       color: Color.fromARGB(100, 22, 44, 33),
                  //       margin: EdgeInsets.all(20),
                  //       padding: EdgeInsets.all(40),
                  //       child: Text(
                  //         "Hello Everyone! This is FlutterCampus",
                  //         style: TextStyle(fontSize: 25, color: Colors.white),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Stack(
                  //   children: [
                  //     Image.asset("assets/images/img_.png"),
                  //     Container(
                  //       width: double.infinity,
                  //       color: Color.fromARGB(100, 22, 44, 33),
                  //       margin: EdgeInsets.all(20),
                  //       padding: EdgeInsets.all(40),
                  //       child: Text(
                  //         "Hello Everyone! This is FlutterCampus",
                  //         style: TextStyle(fontSize: 25, color: Colors.white),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
