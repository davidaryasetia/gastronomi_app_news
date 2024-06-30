import 'package:flutter/material.dart';

import 'package:flutter/scheduler.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/model/village.dart';
import 'package:gastronomy/page/culture/mainpage/culture_body_four.dart';
import 'package:gastronomy/page/culture/mainpage/culture_body_one.dart';
import 'package:gastronomy/page/culture/mainpage/culture_body_three.dart';
import 'package:gastronomy/page/culture/mainpage/culture_body_two.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_one.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_three.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_two.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_four.dart';
import 'package:gastronomy/page/gastronomy/mainpage/gastro_body_five.dart';
import 'package:gastronomy/page/tourist_village/mainpage/tourist_body.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_chatbot.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';

class TouristVillagePage extends StatefulWidget {
  const TouristVillagePage({super.key});

  @override
  State<TouristVillagePage> createState() => _TouristVillagePageState();
}

class _TouristVillagePageState extends State<TouristVillagePage> {
  late Future<VillageData> futureVillages;

  var c = Get.put(GlobalController());
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.scheduleFrameCallback((timeStamp) async {
      c.selectedIndex.value = 4;
      print(c.selectedIndex.value);
    });
    futureVillages = ApiService.fetchVillages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(),
        body: Stack(children: [
          ListView(children: [
            TouristVillageBody(futureVillages: futureVillages),
            Divider(),
            Divider(),
            FootBar()
          ]),
          CustomChatbot(),
        ])
        // HomeBody(),
        );
  }
}
