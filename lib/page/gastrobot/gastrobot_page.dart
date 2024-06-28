import 'dart:ui';

import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:flutter/material.dart';
import 'package:gastronomy/page/gastrobot/messages.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:google_fonts/google_fonts.dart';

class GastrobotPage extends StatefulWidget {
  const GastrobotPage({Key? key}) : super(key: key);

  @override
  _GastrobotPageState createState() => _GastrobotPageState();
}

class _GastrobotPageState extends State<GastrobotPage> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ONetralBlack,
        title: Text('Gastrobot').orelega25s().white(),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
      ),
      body: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(
                height: currentWidth < 600 ? 150 : 120,
              ),
              currentWidth < 600
                  ? Container(
                      width: 300,
                      height: 300,
                      child: FittedBox(
                          fit: BoxFit.cover,
                          child:
                              Image.asset("assets/images/ic_penari_blur.png")))
                  : Image.asset("assets/images/ic_penari_blur.png")
            ]),
          ],
        ),
        Container(
          child: Column(
            children: [
              Expanded(child: MessagesScreen(messages: messages)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: ONetralWhite, boxShadow: [
                  BoxShadow(blurRadius: 0.1, offset: Offset(1, 0)),
                ]),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Ask Something !  ',
                          // contentPadding: EdgeInsets.all(20.0),
                        ),
                        controller: _controller,
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: ONetralBlack),
                      ),
                    )),
                    IconButton(
                        onPressed: () {
                          sendMessage(_controller.text);
                          _controller.clear();
                        },
                        icon: Icon(
                          Icons.send,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  sendMessage(String text) async {
    if (text.isEmpty) {
      print('Message is empty');
    } else {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });

      DetectIntentResponse response = await dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: text)));
      if (response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({'message': message, 'isUserMessage': isUserMessage});
  }
}
