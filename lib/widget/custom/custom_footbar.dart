import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/gastronomy/gastronomy_page.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FootBar extends StatelessWidget {
  const FootBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = Get.put(GlobalController());
    return SizedBox(
      height: 738,
      width: Get.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              height: 480,
              width: Get.width,
              color: ONetralBlack,
              child: Column(
                children: [
                  const SizedBox(
                    height: 182,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Gapulo").orelega25s().white(),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(width: 274, child: const Text("Gapulo give you a new experience on culinary through food gastronomy").nunito16s().white()),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              OnHoverButton(child: Image.asset("assets/images/ic_fb_yellow.png")),
                              const SizedBox(
                                width: 11,
                              ),
                              OnHoverButton(child: Image.asset("assets/images/ic_ig_yellow.png")),
                              const SizedBox(
                                width: 11,
                              ),
                              OnHoverButton(child: Image.asset("assets/images/ic_li_yellow.png")),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Menu").orelega25s().white(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Home").nunito16s().white(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Gastronomy").nunito16s().white(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Culture").nunito16s().white(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Tourism Village").nunito16s().white(),
                        ],
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Contact Us").orelega25s().white(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Gapulo.co").nunito16s().white(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("(0822) 3153 2679").nunito16s().white(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Surabaya, Indonesia").nunito16s().white(),
                        ],
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Social Media").orelega25s().white(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Facebook").nunito16s().white(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Instagram").nunito16s().white(),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text("Twitter").nunito16s().white(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              alignment: Alignment.center,
              width: Get.width * 0.83,
              height: 380,
              decoration: BoxDecoration(color: OCalmBlack, borderRadius: BorderRadius.circular(50)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Discover New Information and Culinary Travel Experiences",
                    textAlign: TextAlign.center,
                  ).orelega50s().white(),
                  const SizedBox(
                    height: 20,
                  ),
                  OnHoverButton(
                    child: SizedBox(
                      width: 200,
                      height: 60,
                      child: BaseButton(
                        ontap: () {
                          c.selectedIndex.value = 1;

                          Get.to(const GastronomyPage());
                        },
                        text: "Explore Now",
                        outlineRadius: 30,
                        color: OPrimaryColor,
                        textStyle: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
