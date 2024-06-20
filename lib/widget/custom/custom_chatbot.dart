import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:gastronomy/page/gastrobot/gastrobot_page.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:get/get.dart';

class CustomChatbot extends StatefulWidget {
  const CustomChatbot({super.key});

  @override
  State<CustomChatbot> createState() => _CustomChatbotState();
}

class _CustomChatbotState extends State<CustomChatbot> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
                padding: EdgeInsets.only(right: Get.width * 120 / 1536, bottom: 50),
                child: OnHoverButton(
                  child: GestureDetector(
                      onTap: () {
                        Get.to(GastrobotPage());
                      },
                      child: Image.asset("assets/images/ic_gastrobot.png")),
                )),
          ],
        ),
      ],
    );
  }
}
