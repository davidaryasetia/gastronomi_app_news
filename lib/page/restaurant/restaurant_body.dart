import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/restaurant/mainpage/resto_body_one.dart';
import 'package:gastronomy/page/restaurant/mainpage/resto_body_three.dart';
import 'package:gastronomy/page/restaurant/mainpage/resto_body_two.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';

class RestaurantBody extends StatefulWidget {
  // const HomePage({super.key});
  const RestaurantBody({
    Key? key,
  }) : super(key: key);

  @override
  State<RestaurantBody> createState() => _RestaurantBodyState();
}

class _RestaurantBodyState extends State<RestaurantBody> {
  var gstate = Get.put(GlobalController());

  @override
  void initState() {
    super.initState();
    gstate.selectedIndex.value = 2;
    print(gstate.selectedIndex.value);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [RestoBodyOne(), Divider(), RestoBodyTwo(), Divider(), RestoBodyThree(), Divider(), FootBar()],
    );
  }
}
