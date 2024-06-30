import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/num_duration_extensions.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/model/village.dart';
import 'package:gastronomy/page/culture/listpage/culture_list_page.dart';
import 'package:gastronomy/page/gastronomy/gastronomy_page.dart';
import 'package:gastronomy/page/tourist_village/detailpage/detail_tourist_village_page.dart';
import 'package:gastronomy/page/tourist_village/mainpage/tourist_body_list_page.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';

class TouristVillageBody extends StatelessWidget {
  final Future<VillageData> futureVillages;

  const TouristVillageBody({
    Key? key,
    required this.futureVillages,
  }) : super(key: key);

  // Backend Program

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
                                    text:
                                        'Explore Exciting Destinations Shrouded ',
                                    style: GoogleFonts.orelegaOne(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400,
                                        color: ONetralBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Nusa Tenggara',
                                        style: GoogleFonts.orelegaOne(
                                            fontSize: 25,
                                            fontWeight: FontWeight.w400,
                                            color: OPrimaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 400,
                                height: 150,
                                child: const Text(
                                        "Lombok Island has a variety of unique customs and ceremonies that can give you something new..")
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
                                Image.asset("assets/images/img_bg_village.png"),
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 50),
                  ],
                ))
            : Stack(children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(children: [
                        Container(
                            width: Get.width,
                            height: 400,
                            child: FittedBox(
                              child: Image.asset(
                                  'assets/images/img_bg_village.png'),
                              fit: BoxFit.fill,
                            )),
                        Container(
                          width: Get.width,
                          height: 400,
                          color: Colors.black.withOpacity(0.6),
                          child: Center(
                            child: Container(
                              width: 957,
                              height: 131,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text:
                                      'Explore Exciting Destinations Shrouded',
                                  style: GoogleFonts.orelegaOne(
                                      fontSize: 60,
                                      fontWeight: FontWeight.w400,
                                      color: ONetralWhite),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Nusa Tenggara',
                                      style: GoogleFonts.orelegaOne(
                                          fontSize: 60,
                                          fontWeight: FontWeight.w400,
                                          color: OPrimaryColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                      SizedBox(height: 40),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 82),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Find Wonderful',
                                    style: GoogleFonts.orelegaOne(
                                        fontSize: 55,
                                        fontWeight: FontWeight.w400,
                                        color: ONetralBlack),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' Village',
                                        style: GoogleFonts.orelegaOne(
                                            fontSize: 55,
                                            fontWeight: FontWeight.w400,
                                            color: OPrimaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(80),
                        child: Wrap(
                          direction: Axis.horizontal,
                          spacing: 50.0,
                          runSpacing: 50,
                          children: [
                            // Ini Bagian ListView
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: Get.width / 1536 * 150),
                              child: FutureBuilder<VillageData>(
                                future: futureVillages,
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    List<Village> villages =
                                        snapshot.data!.data;
                                    return SizedBox(
                                      height: 200,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemCount: villages.length,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              TouristBodyListPage(
                                                  villages: villages[index]),
                                              SizedBox(width: 20),
                                            ],
                                          );
                                        },
                                      ),
                                    );
                                  } else if (snapshot.hasError) {
                                    return Text("${snapshot.error}");
                                  }
                                  return CircularProgressIndicator();
                                },
                              ),
                            ),
                            // Penutup Bagian ListView
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // const CustomAppBar(),
              ]),
        // SizedBox(height: Get.height * 0.15),
      ],
    );
  }
}
