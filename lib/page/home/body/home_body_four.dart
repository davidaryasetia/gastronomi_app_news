import 'package:flutter/material.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/custom/list_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class HomeBodyFour extends StatelessWidget {
  const HomeBodyFour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: Get.height * 0.104, color: OPrimaryColor, child: ListPage()),
        SizedBox(height: Get.height * 0.052),
        RichText(
          text: TextSpan(
            text: 'Lombok ',
            style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
            children: <TextSpan>[
              TextSpan(
                text: 'Special',
                style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OThirdColor),
              ),
              TextSpan(
                text: ' Food',
                style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.083),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.083),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      OnHoverButton(
                          child: const ItemImage(
                        image: "assets/images/img_plecing_kangkung1.png",
                      )),
                      SizedBox(width: Get.width * 0.013),
                      OnHoverButton(
                          child: const ItemImage(
                        image: "assets/images/img_plecing_kangkung2.png",
                      )),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.026),
                  Row(
                    children: [
                      OnHoverButton(
                          child: const ItemImage(
                        image: "assets/images/img_plecing_kangkung3.png",
                      )),
                      SizedBox(width: Get.width * 0.013),
                      OnHoverButton(
                          child: const ItemImage(
                        image: "assets/images/img_sate_bulayak3.png",
                      )),
                    ],
                  ),
                ],
              ),
              SizedBox(width: Get.width * 0.013),
              Column(
                children: [
                  Row(
                    children: [
                      OnHoverButton(
                          child: const ItemImage(
                        image: "assets/images/img_plecing_kangkung1.png",
                      )),
                      SizedBox(width: Get.width * 0.013),
                      OnHoverButton(
                          child: const ItemImage(
                        image: "assets/images/img_plecing_kangkung2.png",
                      )),
                    ],
                  ),
                  SizedBox(height: Get.height * 0.026),
                  Row(
                    children: [
                      OnHoverButton(
                          child: const ItemImage(
                        image: "assets/images/img_plecing_kangkung3.png",
                      )),
                      SizedBox(width: Get.width * 0.013),
                      OnHoverButton(
                          child: const ItemImage(
                        image: "assets/images/img_sate_bulayak3.png",
                      )),
                    ],
                  ),
                ],
              ),
              SizedBox(width: Get.width * 0.013),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x54000000),
                      spreadRadius: 4,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: OnHoverButton(
                  child: ClipRRect(borderRadius: BorderRadius.circular(10.0), child: Image.asset("assets/images/img_beberuk_terong4.png", fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.131),
        Container(height: Get.height * 0.104, color: OPrimaryColor, child: ListPage()),
      ],
    );
  }
}

class ItemImage extends StatelessWidget {
  const ItemImage({
    Key? key,
    required this.image,
    this.ontap,
  }) : super(key: key);

  final String image;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x54000000),
              spreadRadius: 4,
              blurRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(borderRadius: BorderRadius.circular(10.0), child: Image.asset(image, fit: BoxFit.fill)),
      ),
    );
  }
}
