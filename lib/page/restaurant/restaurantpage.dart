import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/restaurant/restaurant_body.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_chatbot.dart';
import 'package:get/get.dart';

class RestaurantPage extends StatefulWidget {
  // const HomePage({super.key});
  const RestaurantPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  var c = Get.put(GlobalController());

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.scheduleFrameCallback((timeStamp) async {
      c.selectedIndex.value = 2;
      print(c.selectedIndex.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Stack(children: [RestaurantBody(), CustomChatbot()]),
    );
  }
}
