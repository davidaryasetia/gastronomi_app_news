import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/num_duration_extensions.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/gastronomy/gastronomy_page.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class HomeBodyOne extends StatelessWidget {
  HomeBodyOne({
    Key? key,
  }) : super(key: key);

  var c = Get.put(GlobalController());

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(height: 50),
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
                                    text: 'Art ',
                                    style: GoogleFonts.orelegaOne(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400,
                                        color: OPrimaryColor),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Behind The Food is',
                                        style: GoogleFonts.orelegaOne(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff050B16)),
                                      ),
                                      TextSpan(
                                        text: ' Rarely ',
                                        style: GoogleFonts.orelegaOne(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w400,
                                            color: OPrimaryColor),
                                      ),
                                      TextSpan(
                                        text: 'Known',
                                        style: GoogleFonts.orelegaOne(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff050B16)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 400,
                                height: 150,
                                child: const Text(
                                        "Food Gastronomy is the science that deals with all aspects of food. Starting from history, origins, how to cook until the food is ready to be served.")
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
                                    // Get.to(const GastronomyPage());
                                  },
                                  width: 200,
                                  height: 50,
                                  text: "Explore The Food",
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
                                Image.asset("assets/images/ic_penari.png"),
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        runAlignment: WrapAlignment.center,
                        runSpacing: 20,
                        children: [
                          ItemInFirstPage(
                            description:
                                'Contains a list of foods and food backgrounds',
                            icon: 'assets/images/ic_recipe.png',
                            title: 'Gastronomy',
                            ontap: () {
                              c.selectedIndex.value = 1;
                              Get.to(const GastronomyPage());
                            },
                          ),
                          SizedBox(height: 20),
                          ItemInFirstPage(
                            description:
                                'Contains a list of cultures from the island of Lombok',
                            title: 'Culture',
                            icon: 'assets/images/ic_culture.png',
                            ontap: () async {
                              c.selectedIndex.value = 1;
                              if (c.selectedIndex.value == 1) {
                                Get.to(const GastronomyPage());
                              }
                            },
                          ),
                          SizedBox(height: 20),
                          const ItemInFirstPage(
                            description:
                                'Contains information about the referral village',
                            title: 'Village',
                            icon: 'assets/images/ic_village.png',
                          ),
                        ]),
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
                            width: Get.width * 0.24,
                            height: Get.height * 0.41,
                            child: RichText(
                              text: TextSpan(
                                text: 'Art ',
                                style: GoogleFonts.orelegaOne(
                                    fontSize: 75,
                                    fontWeight: FontWeight.w400,
                                    color: OPrimaryColor),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Behind The Food is',
                                    style: GoogleFonts.orelegaOne(
                                        fontSize: 75,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff050B16)),
                                  ),
                                  TextSpan(
                                    text: ' Rarely ',
                                    style: GoogleFonts.orelegaOne(
                                        fontSize: 75,
                                        fontWeight: FontWeight.w400,
                                        color: OPrimaryColor),
                                  ),
                                  TextSpan(
                                    text: 'Known',
                                    style: GoogleFonts.orelegaOne(
                                        fontSize: 75,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff050B16)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: Get.height * 0.026),
                          Container(
                            width: Get.width * 0.265,
                            height: Get.height * 0.14,
                            child: const Text(
                                    "Food Gastronomy is the science that deals with all aspects of food. Starting from history, origins, how to cook until the food is ready to be served")
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
                                c.selectedIndex.value = 1;
                                Get.to(const GastronomyPage());
                              },
                              width: 0.13 * Get.width,
                              height: 0.065 * Get.height,
                              text: "Explore The Food",
                              textSize: 18,
                              color: OPrimaryColor,
                              outlineRadius: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Image.asset("assets/images/ic_penari.png")),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ItemInFirstPage(
                                description:
                                    'Contains a list of foods and food backgrounds',
                                icon: 'assets/images/ic_recipe.png',
                                title: 'Gastronomy',
                                ontap: () {
                                  // Get.to(const GastronomyPage());
                                },
                                ma: MainAxisAlignment.start,
                                ca: CrossAxisAlignment.start,
                              ),
                              SizedBox(height: Get.height * 0.08),
                              const ItemInFirstPage(
                                description:
                                    'Contains a list of cultures from the island of Lombok',
                                title: 'Culture',
                                icon: 'assets/images/ic_culture.png',
                                ma: MainAxisAlignment.start,
                                ca: CrossAxisAlignment.start,
                              ),
                              SizedBox(height: Get.height * 0.08),
                              const ItemInFirstPage(
                                description:
                                    'Contains information about the referral village',
                                title: 'Village',
                                icon: 'assets/images/ic_village.png',
                                ma: MainAxisAlignment.start,
                                ca: CrossAxisAlignment.start,
                              ),
                            ]),
                      ),
                    )
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
          crossAxisAlignment:
              (ca == null) ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          mainAxisAlignment:
              (ma == null) ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      border: Border.all(color: Colors.black)),
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
