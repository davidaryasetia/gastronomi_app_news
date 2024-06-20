import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_one.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_three.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_two.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_four.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_five.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_chatbot.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';

class GastronomyPage extends StatefulWidget {
  const GastronomyPage({super.key});

  @override
  State<GastronomyPage> createState() => _GastronomyPageState();
}

class _GastronomyPageState extends State<GastronomyPage> {
  var c = Get.put(GlobalController());
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.scheduleFrameCallback((timeStamp) async {
      c.selectedIndex.value = 1;
      print(c.selectedIndex.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(),
        body: Stack(children: [
          ListView(children: const [GastroBodyOne(), Divider(), GastroBodyTwo(), Divider(), GastroBodyThree(), Divider(), GastroBodyFour(), Divider(), GastroBodyFive(), Divider(), FootBar()]),
          CustomChatbot(),
        ])
        // HomeBody(),
        );
  }
}
