import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/num_duration_extensions.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
import '../listpage/gastronomy_list_page.dart';

class GastroBodyOne extends StatefulWidget {
  const GastroBodyOne({super.key});

  @override
  State<GastroBodyOne> createState() => _GastroBodyOneState();
}

class _GastroBodyOneState extends State<GastroBodyOne> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/img_moon.png"),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("assets/images/img_ayam2.png"),
          ],
        ),
        Image.asset("assets/images/img_bg_list.png"),
        Column(
          children: [
            const SizedBox(height: 120),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 633,
                    height: 320,
                    child: RichText(
                      text: TextSpan(
                        text: 'Discover Taste  ',
                        style: GoogleFonts.orelegaOne(
                            fontSize: 75,
                            fontWeight: FontWeight.w400,
                            color: ONetralBlack),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Extraordinary ',
                            style: GoogleFonts.orelegaOne(
                                fontSize: 75,
                                fontWeight: FontWeight.w400,
                                color: OPrimaryColor),
                          ),
                          TextSpan(
                            text: 'Knowledge Through The ',
                            style: GoogleFonts.orelegaOne(
                                fontSize: 75,
                                fontWeight: FontWeight.w400,
                                color: ONetralBlack),
                          ),
                          TextSpan(
                            text: 'Food',
                            style: GoogleFonts.orelegaOne(
                                fontSize: 75,
                                fontWeight: FontWeight.w400,
                                color: OPrimaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 512,
                    height: 54,
                    child: const Text(
                            "On this page you will meet various foods with a million meanings and stories that you have never had before.")
                        .nunito20m()
                        .black()
                        .animate()
                        .fadeIn(delay: 300.ms, duration: 500.ms)
                        .then() // sets own delay to 800ms (300+500)
                        .slide(duration: 400.ms),
                  ),
                  const SizedBox(height: 20),
                  OnHoverButton(
                    child: BaseButton(
                      ontap: () {
                        Get.to(const ListGastronomyPage());
                      },
                      width: 200,
                      height: 50,
                      text: "Explore The Food",
                      textSize: 18,
                      color: OPrimaryColor,
                      outlineRadius: 30.0,
                    ),
                  ),
                  const SizedBox(height: 30),
                  OnHoverButton(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80.0),
                      child: Image.asset("assets/images/img_arrow_up.png"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
