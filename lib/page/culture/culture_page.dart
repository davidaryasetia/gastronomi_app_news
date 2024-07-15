import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/model/culture.dart';
import 'package:gastronomy/page/culture/mainpage/culture_body_four.dart';
import 'package:gastronomy/page/culture/mainpage/culture_body_one.dart';
import 'package:gastronomy/page/culture/mainpage/culture_body_three.dart';
import 'package:gastronomy/page/culture/mainpage/culture_body_two.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_one.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_three.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_two.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_four.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_five.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_chatbot.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';

class CulturePage extends StatefulWidget {
  const CulturePage({super.key});

  @override
  State<CulturePage> createState() => _CulturePageState();
}

class _CulturePageState extends State<CulturePage> {
  late Future<CultureData> _futureCultures;

  var c = Get.put(GlobalController());
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.scheduleFrameCallback((timeStamp) async {
      c.selectedIndex.value = 3;
      print(c.selectedIndex.value);
    });

    _futureCultures = ApiService.fetchCultures();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(),
        body: Stack(children: [
          ListView(children: [
            CultureBodyOne(),
            Divider(),
            CultureBodyTwo(futureCultures: _futureCultures),
            Divider(),
            CultureBodyThree(),
            Divider(),
            CultureBodyFour(),
            Divider(),
            FootBar()
          ]),
          CustomChatbot(),
        ])
        // HomeBody(),
        );
  }
}
