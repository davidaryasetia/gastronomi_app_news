// import 'package:flutter/material.dart';

// class Trytry extends StatefulWidget {
//   const Trytry({super.key});

//   @override
//   State<Trytry> createState() => _TrytryState();
// }

// class _TrytryState extends State<Trytry> {
//   List<Widget> _cardList = [];
//   List<String> menu = [];
//   final menuController = TextEditingController(text: "");

//   // void _addCardWidget() {
//   //   setState(() {
//   //     _cardList.add(_card());
//   //     print(_cardList.length);
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         Container(
//           height: 800,
//           child: ListView.builder(
//               itemCount: _cardList.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                     height: 80,
//                     margin: EdgeInsets.only(top: 5, left: 8, right: 8),
//                     decoration: new BoxDecoration(
//                       borderRadius: BorderRadius.circular(16),
//                       color: Colors.orangeAccent[100],
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 10),
//                       child: Row(
//                         children: [
//                           CircleAvatar(
//                             radius: 28,
//                             backgroundColor: Colors.white,
//                             child: CircleAvatar(
//                               radius: 26,
//                               child: Text('${index + 1}'),
//                               // backgroundImage: NetworkImage("https://i.pinimg.com/originals/71/83/70/7183704aac01413c86805c19c1586e2b.jpg"),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Expanded(flex: 1,
//                             child: Container(
//                               height: 41,
//                               width: 100,
//                               padding: const EdgeInsets.only(left: 15, bottom: 8),
//                               decoration: BoxDecoration(color: const Color(0xffFFFFFF), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey)),
//                               child: TextField(
//                                 controller: menuController,
//                                 style: const TextStyle(color: Colors.black, fontSize: 25),
//                                 decoration: const InputDecoration(
//                                   border: InputBorder.none,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 5,
//                           ),
//                           Container(
//                             width: 40,
//                             height: 40,
//                             decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
//                             child: GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   _cardList.removeAt(index);
//                                 });
//                               },
//                               child: Icon(
//                                 Icons.delete,
//                                 textDirection: TextDirection.rtl,
//                                 size: 20,
//                                 color: Colors.grey,
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ));
//               }),
//         ),
//       ]),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           if (_cardList.length == 0) {
//             setState(() {
//               _cardList.add(_card());
//               print(_cardList.length);
//             });
//           } else {
//             menu.add(menuController.text);
//             menuController.text = '';
//             setState(() {
//               _cardList.add(_card());
//               print(_cardList.length);
//             });
//             print("======================================");
//             print(menu);
//           }
//         },
//         tooltip: 'Add',
//         child: Icon(Icons.add),
//       ),
//     );
//   }

//   Widget _card() {
//     return Container(
//         height: 80,
//         margin: EdgeInsets.only(top: 5, left: 8, right: 8),
//         decoration: new BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           color: Colors.orangeAccent[100],
//         ),
//         child: Center(
//             child: ListTile(
//                 leading: CircleAvatar(
//                   radius: 28,
//                   backgroundColor: Colors.white,
//                   child: CircleAvatar(
//                     radius: 26,
//                     // backgroundImage: NetworkImage("https://i.pinimg.com/originals/71/83/70/7183704aac01413c86805c19c1586e2b.jpg"),
//                   ),
//                 ),
//                 title: Text(
//                   "Freedom Fighter",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.deepPurple),
//                 ),
//                 subtitle: Text(
//                   'Freedom Fighter',
//                   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
//                 ),
//                 trailing: Card(
//                     elevation: 1,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15.0),
//                     ),
//                     child: Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Container(
//                             width: 50,
//                             child: Row(
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 // Text('5', style: TextStyle(fontSize: 20, color: Colors.grey)),
//                                 // SizedBox(
//                                 //   width: 1,
//                                 // ),
//                                 GestureDetector(
//                                   child: Icon(
//                                     Icons.delete,
//                                     textDirection: TextDirection.rtl,
//                                     size: 20,
//                                     color: Colors.grey,
//                                   ),
//                                 )
//                               ],
//                             )))))));
//   }
// }
