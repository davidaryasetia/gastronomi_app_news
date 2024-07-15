import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/num_duration_extensions.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/model/culture.dart';
import 'package:gastronomy/page/culture/mainpage/culture_body_two_card.dart';
import 'package:gastronomy/page/gastronomy/gastronomy_page.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class CultureBodyTwo extends StatelessWidget {
  const CultureBodyTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        // SizedBox(height: 60),
        RichText(
          text: TextSpan(
            text: 'Common  ',
            style: GoogleFonts.orelegaOne(
                fontSize: 50, fontWeight: FontWeight.w400, color: ONetralBlack),
            children: <TextSpan>[
              TextSpan(
                text: 'Ceremonies',
                style: GoogleFonts.orelegaOne(
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    color: OPrimaryColor),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),

        // Perbaikan Disini
        CultureBodyTwoCard(),
        // Perbaikan Disini

        const SizedBox(
          height: 40,
        ),
        Stack(children: [
          OnHoverButton(
            child: Container(
                width: Get.width,
                height: 300,
                child: FittedBox(
                  child: Image.asset('assets/images/ic_resto_bg.png'),
                  fit: BoxFit.fill,
                )),
          ),
          Container(
            width: Get.width,
            height: 300,
            color: Colors.black.withOpacity(0.6),
          )
        ]),
      ],
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(children: [
        Container(
          height: 272.35,
          width: 327.33,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset("assets/images/ic_beleq.png"),
          ),
        ),
        Container(
          height: 272.35,
          width: 327.33,
          padding: EdgeInsets.only(left: 20, bottom: 20),
          color: Colors.black.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Gendang Beleq").nunito20b().white(),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                        color: OGoodGreen, shape: BoxShape.circle),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 9,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      height: 65.97,
                      width: 287.58,
                      child: Text(
                        "Gendang Beleq adalah alat musik tradisional yang dimainkan secara berkelompok. ndonesia.",
                        maxLines: 3,
                      ).nunito15s().white()),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
