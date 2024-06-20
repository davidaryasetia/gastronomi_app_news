import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/restaurant/restaurant_detail_page/restaurant_detail_body.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantDetailPage extends StatefulWidget {
  const RestaurantDetailPage({super.key});

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  var gstate = Get.put(GlobalController());
  @override
  void initState() {
    super.initState();
    gstate.selectedIndex.value = 2;
    print(gstate.selectedIndex.value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: Stack(children: [
        Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // BackgroundImage(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width / 1536 * 180),
                  child: Column(
                    children: [
                      RestaurantDetailBody(),
                      Divider(),
                    ],
                  ),
                ),
                FootBar()
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  BackgroundImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: Get.width,
          height: 400,
          child: FittedBox(
            child: Image.asset('assets/images/img_bg_detail_page.png'),
            fit: BoxFit.cover,
          )),
      Container(
        width: Get.width,
        height: 390,
        color: Colors.black.withOpacity(0.6),
        child: Center(
          child: Container(
            width: 957,
            height: 131,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'This is The Perfect Time To Get a New Travel Experience',
                style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: ONetralWhite),
                children: <TextSpan>[
                  TextSpan(
                    text: ' For You',
                    style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: OPrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
