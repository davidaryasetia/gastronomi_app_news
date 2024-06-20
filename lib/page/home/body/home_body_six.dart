import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class HomeBodySix extends StatelessWidget {
  const HomeBodySix({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pageWidth = Get.width / 1536;
    var pageHeight = Get.height / 763;
    return Column(
      children: [
        SizedBox(height: Get.height * 0.051),
        RichText(
          text: TextSpan(
            text: 'Culinary & ',
            style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
            children: <TextSpan>[
              TextSpan(
                text: 'Gastronomy',
                style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OPrimaryColor),
              ),
            ],
          ),
        ),
        SizedBox(height: Get.height * 0.0524),
        Image.asset("assets/images/img_island.png"),
        SizedBox(height: Get.height * 0.0524),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: SizedBox(
            width: pageWidth * 1200,
            height: pageHeight * 270,
            child: const Text(
              "Culinary Culture offers a full spectrum of flavors and stories. This website ensures every visitor to experience a different culinary. Not only in terms of taste but the visitors also surf in every culinary element that will be enjoyed. We want to keep you all comfortable and excited with every step of your culinary adventure. Our goal is to exceed your expectations. We hope that you will never forget the combination of flavors and the long story behind the food you are about to taste. We also hope you can appreciate every inch of food and drink that you have tasted. Not only that, you no longer need to bother looking for every element behind the food one by one. Because we have provided it completely in this food gastronomic application. From initial idea to product execution, our talented local residents and culinary experts have ensured the information provided and hopefully will stick in your heart. If there's something you're looking for that you don't see on your menu. We will be happy to discuss your situation and see if you can help. Feel free to stop by our website for new news, new features like trend analysis, and a host of other culinary-related topics. When you're here leave a comment or suggestion: we'd love to hear from you.",
              textAlign: TextAlign.justify,
            ).nunito20s(),
          ),
        ),
        SizedBox(height: pageHeight * 18),
        // Container(height: Get.height * 0.104, color: OSecondaryColor, child: ListPage()),
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
          boxShadow: [
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
