import 'package:flutter/material.dart';
import 'package:gastronomy/page/restaurant/restaurant_add/restaurant_new_add_page.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
// add section
class RestoBodyTwo extends StatelessWidget {
  const RestoBodyTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Get.height * 0.051),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Container(
                width: 700,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Give us a ',
                    style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: ONetralBlack),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Restaurant Recommendation ',
                        style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OPrimaryColor),
                      ),
                      TextSpan(
                        text: 'That you think is good',
                        style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: ONetralBlack),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            OnHoverButton(child: Image.asset('assets/images/img_bg_resto3.png')),
          ],
        ),
        // SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 220),
              child: Stack(children: [
                OnHoverButton(child: Image.asset('assets/images/ic_group_arrow.png')),
                Padding(
                  padding: const EdgeInsets.only(left: 110.0),
                  child: OnHoverButton(
                    child: BaseButton(
                      ontap: () {
                        Get.to(const RestaurantNewAddPage());
                      },
                      width: 0.128 * Get.width,
                      height: 0.065 * Get.height,
                      text: "Add New Restaurant",
                      textSize: 14,
                      color: OGoodGreen,
                      outlineRadius: 30.0,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OnHoverButton(child: Image.asset('assets/images/img_bg_resto2.png')),
          ],
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
