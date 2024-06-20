import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class HomeBodyTwo extends StatelessWidget {
  const HomeBodyTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 50),
        currentWidth < 800
            ? Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                // padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Our ',
                        style: GoogleFonts.orelegaOne(fontSize: 30, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Best Features',
                            style: GoogleFonts.orelegaOne(fontSize: 30, fontWeight: FontWeight.w400, color: OPrimaryColor),
                          ),
                          TextSpan(
                            text: ' You Can Find',
                            style: GoogleFonts.orelegaOne(fontSize: 30, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Most people don't know that food can not only be enjoyed in terms of taste but also the story behind the food",
                      textAlign: TextAlign.center,
                    ).nunito20m()
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 650,
                      height: 250,
                      child: RichText(
                        text: TextSpan(
                          text: 'Our ',
                          style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Best Features',
                              style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OPrimaryColor),
                            ),
                            TextSpan(
                              text: ' You Can Find Here',
                              style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    currentWidth < 1600
                        ?
                        // Container()
                        SizedBox(
                            width: 600,
                            height: 100,
                            child: const Text("Most people don't know that food can not only be enjoyed in terms of taste but also the story behind the food").nunito20m(),
                          )
                        : SizedBox(
                            width: 800,
                            height: 80,
                            child: const Text("Most people don't know that food can not only be enjoyed in terms of taste but also the story behind the food").nunito30m(),
                          )
                  ],
                ),
              ),
        SizedBox(height: currentWidth < 800 ? 20 : 50),
        currentWidth < 800
            ? Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: OnHoverButton(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/img_recipe.png",
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(height: Get.height * 0.02),
                            const Text("Delicious Food").nunito20b(),
                            Text(
                              "See it now...",
                              style: TextStyle(color: OPrimaryColor),
                            ).nunito20b()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: OnHoverButton(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/img_culture.png",
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(height: Get.height * 0.03),
                            const Text("Delicious Food").nunito20b(),
                            Text(
                              "See it now...",
                              style: TextStyle(color: OPrimaryColor),
                            ).nunito20b()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: OnHoverButton(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/img_village.png",
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(height: Get.height * 0.04),
                            const Text("Delicious Food").nunito20b(),
                            Text(
                              "See it now...",
                              style: TextStyle(color: OPrimaryColor),
                            ).nunito20b()
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: OnHoverButton(
                        child: Column(
                          children: [
                            Image.asset("assets/images/img_recipe.png"),
                            SizedBox(height: Get.height * 0.02),
                            const Text("Delicious Food").nunito30b(),
                            Text(
                              "See it now...",
                              style: TextStyle(color: OPrimaryColor),
                            ).nunito30b()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: OnHoverButton(
                        child: Column(
                          children: [
                            Image.asset("assets/images/img_culture.png"),
                            SizedBox(height: Get.height * 0.03),
                            const Text("Delicious Food").nunito30b(),
                            Text(
                              "See it now...",
                              style: TextStyle(color: OPrimaryColor),
                            ).nunito30b()
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: OnHoverButton(
                        child: Column(
                          children: [
                            Image.asset("assets/images/img_village.png"),
                            SizedBox(height: Get.height * 0.04),
                            const Text("Delicious Food").nunito30b(),
                            Text(
                              "See it now...",
                              style: TextStyle(color: OPrimaryColor),
                            ).nunito30b()
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        SizedBox(height: Get.height * 0.1),
      ],
    );
  }
}
