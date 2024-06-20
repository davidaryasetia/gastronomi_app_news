import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/num_duration_extensions.dart';
import 'package:gastronomy/page/culture/listpage/culture_list_page.dart';
import 'package:gastronomy/page/gastronomy/gastronomy_page.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class CultureBodyOne extends StatelessWidget {
  const CultureBodyOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        currentWidth < 800
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200,
                                height: 100,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Do You Know About ',
                                    style: GoogleFonts.orelegaOne(fontSize: 25, fontWeight: FontWeight.w400, color: ONetralBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'The Culture',
                                        style: GoogleFonts.orelegaOne(fontSize: 25, fontWeight: FontWeight.w400, color: OPrimaryColor),
                                      ),
                                      TextSpan(
                                        text: ' Of  ',
                                        style: GoogleFonts.orelegaOne(fontSize: 25, fontWeight: FontWeight.w400, color: ONetralBlack),
                                      ),
                                      TextSpan(
                                        text: 'Lombok Island',
                                        style: GoogleFonts.orelegaOne(fontSize: 25, fontWeight: FontWeight.w400, color: OPrimaryColor),
                                      ),
                                      TextSpan(
                                        text: ' Which Is Very Diverse',
                                        style: GoogleFonts.orelegaOne(fontSize: 25, fontWeight: FontWeight.w400, color: ONetralBlack),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 400,
                                height: 150,
                                child: const Text("Lombok Island has a variety of unique customs and ceremonies that can give you something new..")
                                    .nunito15b()
                                    .black()
                                    .animate()
                                    .fadeIn(delay: 300.ms, duration: 500.ms)
                                    .then() // sets own delay to 800ms (300+500)
                                    .slide(duration: 400.ms),
                              ),
                              // SizedBox(height: 20),
                              OnHoverButton(
                                child: BaseButton(
                                  ontap: () {
                                    Get.to(const CultureListPage());
                                  },
                                  width: 200,
                                  height: 50,
                                  text: "Explore The Culture",
                                  textSize: 15,
                                  textWeight: FontWeight.w600,
                                  color: OPrimaryColor,
                                  outlineRadius: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/ic_culture2.png"),
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 50),
                  ],
                ))
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 515.95,
                            height: 243.59,
                            child: RichText(
                              text: TextSpan(
                                text: 'Do You Know About ',
                                style: GoogleFonts.orelegaOne(fontSize: 50, fontWeight: FontWeight.w400, color: ONetralBlack),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'The Culture',
                                    style: GoogleFonts.orelegaOne(fontSize: 50, fontWeight: FontWeight.w400, color: OPrimaryColor),
                                  ),
                                  TextSpan(
                                    text: ' Of  ',
                                    style: GoogleFonts.orelegaOne(fontSize: 50, fontWeight: FontWeight.w400, color: ONetralBlack),
                                  ),
                                  TextSpan(
                                    text: 'Lombok Island',
                                    style: GoogleFonts.orelegaOne(fontSize: 50, fontWeight: FontWeight.w400, color: OPrimaryColor),
                                  ),
                                  TextSpan(
                                    text: ' Which Is Very Diverse',
                                    style: GoogleFonts.orelegaOne(fontSize: 50, fontWeight: FontWeight.w400, color: ONetralBlack),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.026),
                          Container(
                            width: Get.width * 0.265,
                            height: Get.height * 0.14,
                            child: const Text("Food Gastronomy is the science that deals with all aspects of food. Starting from history, origins, how to cook until the food is ready to be served")
                                .nunito20m()
                                .black()
                                .animate()
                                .fadeIn(delay: 300.ms, duration: 500.ms)
                                .then() // sets own delay to 800ms (300+500)
                                .slide(duration: 400.ms),
                          ),
                          SizedBox(height: Get.height * 0.026),
                          OnHoverButton(
                            child: BaseButton(
                              ontap: () {
                                Get.to(const CultureListPage());
                              },
                              width: 0.13 * Get.width,
                              height: 0.065 * Get.height,
                              text: "Explore The Culture",
                              textSize: 18,
                              color: OPrimaryColor,
                              outlineRadius: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(flex: 2, child: Image.asset("assets/images/ic_culture2.png")),
                  ],
                ))
        // SizedBox(height: Get.height * 0.15),
      ],
    );
  }
}

class ItemInFirstPage extends StatelessWidget {
  const ItemInFirstPage({
    Key? key,
    this.ontap,
    this.ma,
    this.ca,
    required this.title,
    required this.description,
    required this.icon,
  }) : super(key: key);

  final Function()? ontap;
  final String title;
  final String description;
  final String icon;
  final CrossAxisAlignment? ca;
  final MainAxisAlignment? ma;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: OnHoverButton(
        child: Row(
          crossAxisAlignment: (ca == null) ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          mainAxisAlignment: (ma == null) ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100)), border: Border.all(color: Colors.black)),
                  child: Image.asset(icon),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title).nunito20b(),
                    const SizedBox(height: 5),
                    Container(width: 115, child: Text(description).nunito15s()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
