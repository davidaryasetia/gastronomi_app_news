import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class GastroBodyTwo extends StatelessWidget {
  const GastroBodyTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = Get.width / 1536;
    return Column(
      children: [
        SizedBox(height: Get.height * 0.051),
        RichText(
          text: TextSpan(
            text: 'See Our ',
            style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: ONetralBlack),
            children: <TextSpan>[
              TextSpan(
                text: 'Cullinary ',
                style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OPrimaryColor),
              ),
              TextSpan(
                text: 'Stories',
                style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: ONetralBlack),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/img_traditional_food.png"),
                  SizedBox(height: 13.72),
                  const Text("Traditional Food").nunito25b().black(),
                  SizedBox(height: 20),
                  Container(width: 260, height: 85, child: const Text("Lombok traditional foods that have a lot of stories and meanings behind them", textAlign: TextAlign.justify).nunito20s().black()),
                  SizedBox(height: 20),
                  OnHoverButton(
                    child: BaseButton(
                      ontap: () {},
                      text: "See More ...",
                      color: OPrimaryColor,
                      outlineRadius: 30,
                      width: 150,
                      height: 50,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Image.asset("assets/images/img_traditional_drink.png"),
                  SizedBox(height: 13.72),
                  const Text("Traditional Food").nunito25b().black(),
                  SizedBox(height: 20),
                  Container(width: 260, height: 134, child: const Text("Lombok's special drink is known as one of the areas in Indonesia that offers drinks that are not only delicious but also healthy", textAlign: TextAlign.justify).nunito20s().black()),
                  SizedBox(height: 20),
                  OnHoverButton(
                    child: BaseButton(
                      ontap: () {},
                      text: "See More ...",
                      color: OPrimaryColor,
                      outlineRadius: 30,
                      width: 150,
                      height: 50,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Image.asset("assets/images/img_traditional_dessert.png"),
                  SizedBox(height: 13.72),
                  const Text("Traditional Food").nunito25b().black(),
                  SizedBox(height: 20),
                  Container(width: 260, height: 134, child: const Text("Lombok's special cakes can be one of the complementary instruments for your tour in this city of a thousand mosques.", textAlign: TextAlign.justify).nunito20s().black()),
                  SizedBox(height: 20),
                  OnHoverButton(
                    child: BaseButton(
                      ontap: () {},
                      text: "See More ...",
                      color: OPrimaryColor,
                      outlineRadius: 30,
                      width: 150,
                      height: 50,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 33),
      ],
    );
  }
}
