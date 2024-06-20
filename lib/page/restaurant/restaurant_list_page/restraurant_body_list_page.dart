import 'package:flutter/material.dart';
import 'package:gastronomy/page/restaurant/restaurant_add/restaurant_new_add_page.dart';
import 'package:gastronomy/page/restaurant/restaurant_detail_page/restaurant_detail_page.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantBodyListPage extends StatelessWidget {
  RestaurantBodyListPage({super.key});
  final namaController = TextEditingController(text: "");
  final deskripsiController = TextEditingController(text: "");
  final lokasiController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Let’s See Wonderful ',
                style: GoogleFonts.orelegaOne(
                    fontSize: 70,
                    fontWeight: FontWeight.w400,
                    color: ONetralBlack),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Culture ',
                    style: GoogleFonts.orelegaOne(
                        fontSize: 70,
                        fontWeight: FontWeight.w400,
                        color: OPrimaryColor),
                  ),
                  TextSpan(
                    text: '&',
                    style: GoogleFonts.orelegaOne(
                        fontSize: 70,
                        fontWeight: FontWeight.w400,
                        color: ONetralBlack),
                  ),
                  TextSpan(
                    text: 'Tradition',
                    style: GoogleFonts.orelegaOne(
                        fontSize: 70,
                        fontWeight: FontWeight.w400,
                        color: OPrimaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        OnHoverButton(
          child: BaseButton(
            ontap: () {
              Get.to(RestaurantNewAddPage());
            },
            width: Get.width,
            height: 0.05 * Get.height,
            text: "Explore Restaurant",
            textSize: 20,
            color: OGoodGreen,
            outlineRadius: 30.0,
            icon: Icons.add,
            iconColor: Colors.white,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) => ListItem())
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnHoverButton(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Get.to(RestaurantDetailPage());
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              width: 427,
                              height: 232,
                              child: FittedBox(
                                child: Image.asset(
                                    "assets/images/img_recipe_ayam.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Restaurant Pelecik Kangkung")
                                  .nunito30b()
                                  .black(),
                              Row(
                                children: [
                                  Image.asset(
                                      "assets/images/ic_location_primary.png"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                          "Labuan Mapin, Kec. Alas Bar., Kabupaten Sumbawa, Nusa Tenggara Bar. 84454")
                                      .nunito18s()
                                      .primary(),
                                ],
                              ),
                              SizedBox(height: 10),
                              const Text("Deskripsi:").nunito20b().black(),
                              const Text(
                                      "Restauran tempat makan Plecik kangkung khas NTT. daerah Labuan Mapin. ")
                                  .nunito20s()
                                  .black(),
                              SizedBox(height: 10),
                              const Text("Menu Makanan:").nunito20b().black(),
                              SizedBox(
                                height: 20,
                                width: Get.width,
                                child: ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Text("data ").nunito20s().black();
                                    }),
                              ),
                              const Text("").nunito20s().black(),
                              // GestureDetector(onTap: () {}, child: const Text("Learn it more...").nunito25s().primary()),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                    // Divider(),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        )
      ],
    );
  }
}
