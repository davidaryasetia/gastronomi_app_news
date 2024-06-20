import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/colors.dart';

class HomeBodyThree extends StatelessWidget {
  const HomeBodyThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return currentWidth < 800
        ? Column(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'How we ',
                        style: GoogleFonts.orelegaOne(fontSize: 30, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Serve',
                            style: GoogleFonts.orelegaOne(fontSize: 30, fontWeight: FontWeight.w400, color: OPrimaryColor),
                          ),
                          TextSpan(
                            text: ' you ?',
                            style: GoogleFonts.orelegaOne(fontSize: 30, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                          ),
                          // TextSpan(
                          //   text: 'Known',
                          //   style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                          // ),
                        ],
                      ),
                    ),
                    Container(width: 650, height: 180, child: Text("For the first time, you have to know how to process your food until it is served and ready to eat. Cause knowledge in every process of serving the food until it ready to eat will give you a new culinary experience. starting from farming and breeders and waiting for harvest, followed by the selection of raw materials, preparation of tools, cooking food, and preparation of serving until ready to eat").nunito15m()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 150,
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(color: OSecondaryColor, borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OnHoverButton(
                            child: GestureDetector(
                              onTap: () {
                                // c.selectedIndex.value =
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width: 50,
                                      height: 53,
                                      child: Image.asset(
                                        "assets/images/img_food.png",
                                        fit: BoxFit.fill,
                                      )),
                                  SizedBox(height: 10),
                                  const Text("Traditional Food").nunito15b(),
                                  GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        "See it nonw...",
                                        style: TextStyle(color: OPrimaryColor),
                                      ).nunito15b()),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          OnHoverButton(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: 50,
                                    height: 53,
                                    // decoration: BoxDecoration(
                                    //   color: Colors.white,
                                    // borderRadius: BorderRadius.all(Radius.circular(100))
                                    // ),
                                    child: Image.asset(
                                      "assets/images/img_drink.png",
                                      fit: BoxFit.fill,
                                    )),
                                const SizedBox(height: 10),
                                const Text("Traditional Drink").nunito15b(),
                                GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "See it nonw...",
                                      style: TextStyle(color: OPrimaryColor),
                                    ).nunito15b()),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          OnHoverButton(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    width: 50,
                                    height: 53,
                                    // decoration: BoxDecoration(
                                    //   color: Colors.white,
                                    // borderRadius: BorderRadius.all(Radius.circular(100))
                                    // ),
                                    child: Image.asset(
                                      "assets/images/img_dessert.png",
                                      fit: BoxFit.fill,
                                    )),
                                const SizedBox(height: 10),
                                const Text("Traditional Dessert").nunito15b(),
                                GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "See it now...",
                                      style: TextStyle(color: OPrimaryColor),
                                    ).nunito15b()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        : Stack(
            children: [
              Column(
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 140.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 800,
                              height: 100,
                              child: RichText(
                                text: TextSpan(
                                  text: 'How we ',
                                  style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Serve',
                                      style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: OPrimaryColor),
                                    ),
                                    TextSpan(
                                      text: ' you ?',
                                      style: GoogleFonts.orelegaOne(fontSize: 70, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                                    ),
                                    // TextSpan(
                                    //   text: 'Known',
                                    //   style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: Color(0xff050B16)),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(width: 650, height: 200, child: Text("For the first time, you have to know how to process your food until it is served and ready to eat. Cause knowledge in every process of serving the food until it ready to eat will give you a new culinary experience. starting from farming and breeders and waiting for harvest, followed by the selection of raw materials, preparation of tools, cooking food, and preparation of serving until ready to eat").nunito20m()),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: currentWidth < 800 ? 30 : 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: Container(
                      // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                      width: Get.width,
                      height: 650,
                      child: Stack(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 40),
                              height: 300,
                              width: Get.width,
                              decoration: BoxDecoration(color: OSecondaryColor, borderRadius: BorderRadius.all(Radius.circular(40))),
                              child: Row(
                                children: [
                                  OnHoverButton(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: 150,
                                            height: 153,
                                            // decoration: BoxDecoration(
                                            //   color: Colors.white,
                                            // borderRadius: BorderRadius.all(Radius.circular(100))
                                            // ),
                                            child: Image.asset(
                                              "assets/images/img_food.png",
                                              fit: BoxFit.fill,
                                            )),
                                        SizedBox(height: 28),
                                        const Text("Traditional Food").nunito15b(),
                                        GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              "See it nonw...",
                                              style: TextStyle(color: OPrimaryColor),
                                            ).nunito15b()),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 52),
                                  OnHoverButton(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            width: 150,
                                            height: 153,
                                            // decoration: BoxDecoration(
                                            //   color: Colors.white,
                                            // borderRadius: BorderRadius.all(Radius.circular(100))
                                            // ),
                                            child: Image.asset(
                                              "assets/images/img_drink.png",
                                              fit: BoxFit.fill,
                                            )),
                                        const SizedBox(height: 28),
                                        const Text("Traditional Drink").nunito15b(),
                                        GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              "See it nonw...",
                                              style: TextStyle(color: OPrimaryColor),
                                            ).nunito15b()),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 52),
                                  OnHoverButton(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: 150,
                                            height: 153,
                                            // decoration: BoxDecoration(
                                            //   color: Colors.white,
                                            // borderRadius: BorderRadius.all(Radius.circular(100))
                                            // ),
                                            child: Image.asset(
                                              "assets/images/img_dessert.png",
                                              fit: BoxFit.fill,
                                            )),
                                        const SizedBox(height: 28),
                                        const Text("Traditional Dessert").nunito15b(),
                                        GestureDetector(
                                            onTap: () {},
                                            child: Text(
                                              "See it nonw...",
                                              style: TextStyle(color: OPrimaryColor),
                                            ).nunito15b()),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: -90,
                          right: -20,
                          child: SizedBox(
                              width: 600,
                              height: 800,
                              child: Image.asset(
                                "assets/images/img_ayam.png",
                              )),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          );
  }
}
