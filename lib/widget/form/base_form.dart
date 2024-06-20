import 'package:flutter/material.dart'; 
import 'package:gastronomy/utils/ext_text.dart';
import 'package:get/get.dart';

class BaseForm extends StatefulWidget {
  final TextEditingController controller;
  final String title;

  const BaseForm({super.key, required this.controller, required this.title});

  @override
  State<BaseForm> createState() => _BaseFormState();
}

class _BaseFormState extends State<BaseForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(widget.title).nunito30b(),
        Container(
          height: 41,
          padding: const EdgeInsets.only(left: 15, bottom: 8),
          decoration: BoxDecoration(color: const Color(0xffFFFFFF), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey)),
          child: TextField(
            controller: widget.controller,
            style: const TextStyle(color: Colors.black, fontSize: 25),
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
