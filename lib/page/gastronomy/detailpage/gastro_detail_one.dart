import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class GastroDetailOne extends StatelessWidget {
  GastroDetailOne({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
              // textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Discover',
                style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: ONetralBlack),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Wonderful',
                    style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: OPrimaryColor),
                  ),
                  TextSpan(
                    text: ' Gastronomy',
                    style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: ONetralBlack),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 41),
        Column(
          children: [
            CustomRoundedImage(
              height: 135,
              image: 'assets/images/img_detail_long.png',
              outlineRounded: 10,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CustomRoundedImage(
                    height: 135,
                    image: 'assets/images/img_detail_1.png',
                    outlineRounded: 10,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                    flex: 1,
                    child: CustomRoundedImage(
                      image: "assets/images/img_detail_2.png",
                      outlineRounded: 10,
                      height: 135,
                      width: Get.width,
                    )),
                SizedBox(width: 10),
                Expanded(
                    flex: 1,
                    child: CustomRoundedImage(
                      image: "assets/images/img_detail_3.png",
                      outlineRounded: 10,
                      height: 135,
                      width: Get.width,
                    )),
                SizedBox(width: 10),
                Expanded(
                    flex: 1,
                    child: CustomRoundedImage(
                      image: "assets/images/img_detail_4.png",
                      outlineRounded: 10,
                      height: 135,
                      width: Get.width,
                    )),
                SizedBox(width: 10),
                Expanded(
                    flex: 1,
                    child: CustomRoundedImage(
                      image: "assets/images/img_detail_5.png",
                      outlineRounded: 10,
                      height: 135,
                      width: Get.width,
                    )),
                SizedBox(width: 10),
                Expanded(
                    flex: 1,
                    child: CustomRoundedImage(
                      image: "assets/images/img_detail_6.png",
                      outlineRounded: 10,
                      height: 135,
                      width: Get.width,
                    )),
              ],
            ),
          ],
        ),
        SizedBox(height: 42),
        Text(
          "All existing food and beverages are produced from raw materials sourced from nature with the help of human hands. Any raw materials such as vegetables, fruit, and chicken or beef can be found easily on the islands of lombok. Coconut, coffee, cloves, tobacco, tamarind, areca nut and many types of agricultural and plantation crops can be found here. Every raw material for vegetables, fruits, and meat animals is cultivated properly by farmers and ranchers. Within a certain period each raw material will enter the ripe stage and ready to be harvested and goes to the sorting stage on the best products for the best quality in food.",
          textAlign: TextAlign.justify,
        ).nunito20s().black(),
        SizedBox(height: 30),
      ],
    );
  }
}
