import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';

class MessagesScreen extends StatefulWidget {
  final List messages;
  const MessagesScreen({Key? key, required this.messages}) : super(key: key);

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return ListView.separated(
        itemBuilder: (context, index) {
          // Container(
          //     decoration: new BoxDecoration(
          //       image: new DecorationImage(
          //         image: new ExactAssetImage('assets/images/ic_penari.png'),
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     child: new BackdropFilter(
          //       filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          //       child: new Container(
          //         decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
          //       ),
          //     ),
          //   ),
          //
          return widget.messages[index]['isUserMessage']
              ? Row(
                  mainAxisAlignment: widget.messages[index]['isUserMessage'] ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: widget.messages[index]['isUserMessage'] ? MainAxisAlignment.end : MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(blurRadius: 0.1, offset: Offset(1, 0)),
                                  ],
                                  border: Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                      20,
                                    ),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(widget.messages[index]['isUserMessage'] ? 0 : 20),
                                    topLeft: Radius.circular(widget.messages[index]['isUserMessage'] ? 20 : 0),
                                  ),
                                  color: widget.messages[index]['isUserMessage'] ? Colors.white : Colors.white),
                              // color: widget.messages[index]['isUserMessage'] ? Colors.grey.shade800 : Colors.grey.shade900.withOpacity(0.8)),
                              constraints: BoxConstraints(maxWidth: w * 2 / 3),
                              child: Text(widget.messages[index]['message'].text.text[0]).nunito15b()),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle, border: Border.all(color: Colors.grey.shade500)),
                        child: Center(
                          child: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: FittedBox(fit: BoxFit.contain, child: Image.asset("assets/images/ic_gastrobot.png")),
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: widget.messages[index]['isUserMessage'] ? MainAxisAlignment.end : MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(blurRadius: 0.1, offset: Offset(1, 0)),
                                  ],
                                  border: Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                      20,
                                    ),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(widget.messages[index]['isUserMessage'] ? 0 : 20),
                                    topLeft: Radius.circular(widget.messages[index]['isUserMessage'] ? 20 : 0),
                                  ),
                                  color: widget.messages[index]['isUserMessage'] ? Colors.white : Colors.white),
                              // color: widget.messages[index]['isUserMessage'] ? Colors.grey.shade800 : Colors.grey.shade900.withOpacity(0.8)),
                              constraints: BoxConstraints(maxWidth: w * 2 / 3),
                              child: Text(widget.messages[index]['message'].text.text[0]).nunito15b()),
                        ],
                      ),
                    ),
                  ],
                );
        },
        separatorBuilder: (_, i) => Padding(padding: EdgeInsets.only(top: 10)),
        itemCount: widget.messages.length);
  }
}
