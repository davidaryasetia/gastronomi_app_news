import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/num_duration_extensions.dart';
import 'package:gastronomy/page/restaurant/restaurant_list_page/restaurant_list_page.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class RestoBodyOne extends StatefulWidget {
  const RestoBodyOne({super.key});

  @override
  State<RestoBodyOne> createState() => _RestoBodyOneState();
}

class _RestoBodyOneState extends State<RestoBodyOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(children: [
          OnHoverButton(
            child: Container(
                width: Get.width,
                height: 300,
                child: FittedBox(
                  child: Image.asset('assets/images/img_bg_restaurant.png'),
                  fit: BoxFit.fill,
                )),
          ),
          Container(
            width: Get.width,
            height: 300,
            color: Colors.black.withOpacity(0.6),
          )
        ]),
        SizedBox(height: 40),
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OnHoverButton(
                  child: Container(
                      width: 1000,
                      height: 450,
                      child: FittedBox(
                        child: Image.asset("assets/images/img_restaurant2.png"),
                        fit: BoxFit.fill,
                      )),
                ),
                // Image.asset('assets/images/img_bg_restaurant.png'),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // SizedBox(height: Get.height * 0.196),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 633,
                      height: 120,
                      child: RichText(
                        text: TextSpan(
                          text: 'Let’s Find Your  ',
                          style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: ONetralBlack),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Restaurant ',
                              style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: OPrimaryColor),
                            ),
                            // TextSpan(
                            //   text: 'Knowledge Through The ',
                            //   style: GoogleFonts.orelegaOne(fontSize: 75, fontWeight: FontWeight.w400, color: ONetralBlack),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: 340,
                      height: 110,
                      child: const Text("Lombok Island has many restaurants that provide so many dishes that cannot be found in other areas besides Lombok Island")
                          .nunito20m()
                          .black()
                          .animate()
                          .fadeIn(delay: 300.ms, duration: 500.ms)
                          .then() // sets own delay to 800ms (300+500)
                          .slide(duration: 400.ms),
                    ),
                    SizedBox(height: 70),
                    OnHoverButton(
                      child: BaseButton(
                        ontap: () {
                          Get.to(RestaurantListPage());
                        },
                        width: 0.13 * Get.width,
                        height: 0.065 * Get.height,
                        text: "Explore Restaurant",
                        textSize: 15,
                        color: OPrimaryColor,
                        outlineRadius: 30.0,
                      ),
                    ),
                    SizedBox(height: 30),
                    OnHoverButton(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: Image.asset("assets/images/img_arrow_up.png"),
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ]),
        // Image.asset("assets/images/img_bg_list.png"),
      ],
    );
  }
}
