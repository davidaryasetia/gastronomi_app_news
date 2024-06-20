import 'package:flutter/material.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:get/get.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key, required this.widget});
  final Widget widget;

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: MyAppBar(),
        appBar: CustomAppbar(),
        body: Stack(
          children: [
            widget,
            Positioned(
                bottom: 0,
                child: Column(
                  children: [],
                ))
          ],
        )
        // Stack(children: [
        //   Positioned(
        //     top: 0,
        //     left: 0,
        //     child: Container(
        //       width: Get.width,
        //       height: Get.height,
        //       // color: Colors.redAccent,
        //       child: SingleChildScrollView(
        //         child: Column(
        //           children: [
        //             Stack(
        //               children: [
        //                 Image.asset("assets/images/img_.png"),
        //                 Container(
        //                   width: double.infinity,
        //                   color: Color.fromARGB(100, 22, 44, 33),
        //                   margin: EdgeInsets.all(20),
        //                   padding: EdgeInsets.all(40),
        //                   child: Text(
        //                     "Hello Everyone! This is FlutterCampus",
        //                     style: TextStyle(fontSize: 25, color: Colors.white),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             Stack(
        //               children: [
        //                 Image.asset("assets/images/img_.png"),
        //                 Container(
        //                   width: double.infinity,
        //                   color: Color.fromARGB(100, 22, 44, 33),
        //                   margin: EdgeInsets.all(20),
        //                   padding: EdgeInsets.all(40),
        //                   child: Text(
        //                     "Hello Everyone! This is FlutterCampus",
        //                     style: TextStyle(fontSize: 25, color: Colors.white),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             Stack(
        //               children: [
        //                 Image.asset("assets/images/img_.png"),
        //                 Container(
        //                   width: double.infinity,
        //                   color: Color.fromARGB(100, 22, 44, 33),
        //                   margin: EdgeInsets.all(20),
        //                   padding: EdgeInsets.all(40),
        //                   child: Text(
        //                     "Hello Everyone! This is FlutterCampus",
        //                     style: TextStyle(fontSize: 25, color: Colors.white),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             Stack(
        //               children: [
        //                 Image.asset("assets/images/img_.png"),
        //                 Container(
        //                   width: double.infinity,
        //                   color: Color.fromARGB(100, 22, 44, 33),
        //                   margin: EdgeInsets.all(20),
        //                   padding: EdgeInsets.all(40),
        //                   child: Text(
        //                     "Hello Everyone! This is FlutterCampus",
        //                     style: TextStyle(fontSize: 25, color: Colors.white),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //             // Stack(
        //             //   children: [
        //             //     Image.asset("assets/images/img_.png"),
        //             //     Container(
        //             //       width: double.infinity,
        //             //       color: Color.fromARGB(100, 22, 44, 33),
        //             //       margin: EdgeInsets.all(20),
        //             //       padding: EdgeInsets.all(40),
        //             //       child: Text(
        //             //         "Hello Everyone! This is FlutterCampus",
        //             //         style: TextStyle(fontSize: 25, color: Colors.white),
        //             //       ),
        //             //     ),
        //             //   ],
        //             // ),
        //             // Stack(
        //             //   children: [
        //             //     Image.asset("assets/images/img_.png"),
        //             //     Container(
        //             //       width: double.infinity,
        //             //       color: Color.fromARGB(100, 22, 44, 33),
        //             //       margin: EdgeInsets.all(20),
        //             //       padding: EdgeInsets.all(40),
        //             //       child: Text(
        //             //         "Hello Everyone! This is FlutterCampus",
        //             //         style: TextStyle(fontSize: 25, color: Colors.white),
        //             //       ),
        //             //     ),
        //             //   ],
        //             // ),
        //             // Stack(
        //             //   children: [
        //             //     Image.asset("assets/images/img_.png"),
        //             //     Container(
        //             //       width: double.infinity,
        //             //       color: Color.fromARGB(100, 22, 44, 33),
        //             //       margin: EdgeInsets.all(20),
        //             //       padding: EdgeInsets.all(40),
        //             //       child: Text(
        //             //         "Hello Everyone! This is FlutterCampus",
        //             //         style: TextStyle(fontSize: 25, color: Colors.white),
        //             //       ),
        //             //     ),
        //             //   ],
        //             // ),
        //             // Stack(
        //             //   children: [
        //             //     Image.asset("assets/images/img_.png"),
        //             //     Container(
        //             //       width: double.infinity,
        //             //       color: Color.fromARGB(100, 22, 44, 33),
        //             //       margin: EdgeInsets.all(20),
        //             //       padding: EdgeInsets.all(40),
        //             //       child: Text(
        //             //         "Hello Everyone! This is FlutterCampus",
        //             //         style: TextStyle(fontSize: 25, color: Colors.white),
        //             //       ),
        //             //     ),
        //             //   ],
        //             // ),
        //             // Stack(
        //             //   children: [
        //             //     Image.asset("assets/images/img_.png"),
        //             //     Container(
        //             //       width: double.infinity,
        //             //       color: Color.fromARGB(100, 22, 44, 33),
        //             //       margin: EdgeInsets.all(20),
        //             //       padding: EdgeInsets.all(40),
        //             //       child: Text(
        //             //         "Hello Everyone! This is FlutterCampus",
        //             //         style: TextStyle(fontSize: 25, color: Colors.white),
        //             //       ),
        //             //     ),
        //             //   ],
        //             // ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ]),
        );
  }
}
