import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_five.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_four.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_one.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_six.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_three.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_two.dart';
import 'package:gastronomy/page/gastronomy/listpage/gastronomy_list_page_controller.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GastronomyDetailPage extends StatefulWidget {
  final int foodId;

  const GastronomyDetailPage({super.key, required this.foodId});

  @override
  State<GastronomyDetailPage> createState() => _GastronomyDetailPageState();
}

class _GastronomyDetailPageState extends State<GastronomyDetailPage> {
  var gstate = Get.put(GlobalController());
  var l = Get.put(GastronomyListPageController());

  @override
  void initState() {
    super.initState();
    gstate.selectedIndex.value = 1;
    // print(gstate.selectedIndex.value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Stack(children: [
        Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackgroundImage(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Get.width / 1536 * 82),
                  child: Column(
                    children: [
                      GastroDetailOne(),
                      Divider(),
                      //  Detail Two
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("Traditional Food")
                                            .nunito20s()
                                            .primary(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                                "assets/images/ic_location_primary.png"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            const Text(
                                                    "Kepulauan Lombok, Nusa Tenggara Barat")
                                                .nunito18s()
                                                .black(),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Text("Food Name").orelega50s().black(),
                                    SizedBox(height: 15),
                                    Container(
                                      child: Text(
                                        "Food Description",
                                        textAlign: TextAlign.justify,
                                      ).nunito20s().black(),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("History").orelega40s().black(),
                            ],
                          ),
                          SizedBox(height: 29),
                          Row(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: CustomRoundedImage(
                                    image:
                                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Fhowto%2Fguide%2Fwhat-are-ultra-processed-foods&psig=AOvVaw0zWEYVggweICeC4zrIp9hf&ust=1720834061094000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIib6MmsoIcDFQAAAAAdAAAAABAY",
                                    outlineRounded: 10,
                                    height: 198,
                                    width: Get.width,
                                  )),
                              SizedBox(width: 10),
                              Expanded(
                                  flex: 1,
                                  child: CustomRoundedImage(
                                    image:
                                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Fhowto%2Fguide%2Fwhat-are-ultra-processed-foods&psig=AOvVaw0zWEYVggweICeC4zrIp9hf&ust=1720834061094000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIib6MmsoIcDFQAAAAAdAAAAABAY",
                                    outlineRounded: 10,
                                    height: 198,
                                    width: Get.width,
                                  )),
                              SizedBox(width: 10),
                              Expanded(
                                  flex: 1,
                                  child: CustomRoundedImage(
                                    image:
                                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Fhowto%2Fguide%2Fwhat-are-ultra-processed-foods&psig=AOvVaw0zWEYVggweICeC4zrIp9hf&ust=1720834061094000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIib6MmsoIcDFQAAAAAdAAAAABAY",
                                    outlineRounded: 10,
                                    height: 198,
                                    width: Get.width,
                                  )),
                              SizedBox(width: 10),
                              Expanded(
                                  flex: 1,
                                  child: CustomRoundedImage(
                                    image:
                                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Fhowto%2Fguide%2Fwhat-are-ultra-processed-foods&psig=AOvVaw0zWEYVggweICeC4zrIp9hf&ust=1720834061094000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIib6MmsoIcDFQAAAAAdAAAAABAY",
                                    outlineRounded: 10,
                                    height: 198,
                                    width: Get.width,
                                  )),
                            ],
                          ),
                          SizedBox(height: 29),
                          Text(
                            "History",
                            textAlign: TextAlign.justify,
                          ).nunito20s().black(),
                          SizedBox(height: 40),
                        ],
                      ),
                      // End Detail Two
                      Divider(),

                      //  Detail Three
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Culture").orelega40s().black(),
                            ],
                          ),
                          SizedBox(height: 25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                child: Container(
                                  width: 230,
                                  height: 150,
                                  child: FittedBox(
                                    child: Image.asset(
                                        "assets/images/img_recipe_ayam.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 30),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  "Over time, it was unexpected that the enjoyment of this meal was very popular with the people of Lombok. Slowly but surely they often make this food for a meal that is usually enjoyed with the family. Until now, Taliwang chicken is also sold in stalls and restaurants so that it is closer to the community and becomes a Lombok culinary specialty that must be tasted by tourists when visiting NTB.",
                                  textAlign: TextAlign.justify,
                                ).nunito20s().black(),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Food Party Of Life Style")
                                  .orelega40s()
                                  .black(),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "The food party of lifestyle here has traditional meanings that often include food menus related to Ayam Taliwang",
                                textAlign: TextAlign.justify,
                              ).nunito20s().black(),
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 513,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: CustomRoundedImage(
                                          image:
                                              "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Fhowto%2Fguide%2Fwhat-are-ultra-processed-foods&psig=AOvVaw0zWEYVggweICeC4zrIp9hf&ust=1720834061094000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIib6MmsoIcDFQAAAAAdAAAAABAY",
                                          outlineRounded: 20,
                                          height: 246,
                                        )),
                                    SizedBox(width: 20),
                                    Expanded(
                                        flex: 1,
                                        child: CustomRoundedImage(
                                            image:
                                                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Fhowto%2Fguide%2Fwhat-are-ultra-processed-foods&psig=AOvVaw0zWEYVggweICeC4zrIp9hf&ust=1720834061094000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIib6MmsoIcDFQAAAAAdAAAAABAY",
                                            outlineRounded: 20,
                                            height: 246)),
                                    SizedBox(width: 20),
                                    Expanded(
                                        flex: 1,
                                        child: CustomRoundedImage(
                                            image:
                                                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Fhowto%2Fguide%2Fwhat-are-ultra-processed-foods&psig=AOvVaw0zWEYVggweICeC4zrIp9hf&ust=1720834061094000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIib6MmsoIcDFQAAAAAdAAAAABAY",
                                            outlineRounded: 20,
                                            height: 246)),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: CustomRoundedImage(
                                            image:
                                                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Fhowto%2Fguide%2Fwhat-are-ultra-processed-foods&psig=AOvVaw0zWEYVggweICeC4zrIp9hf&ust=1720834061094000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIib6MmsoIcDFQAAAAAdAAAAABAY",
                                            outlineRounded: 20,
                                            height: 246)),
                                    SizedBox(width: 20),
                                    Expanded(
                                        flex: 1,
                                        child: CustomRoundedImage(
                                            image:
                                                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Fhowto%2Fguide%2Fwhat-are-ultra-processed-foods&psig=AOvVaw0zWEYVggweICeC4zrIp9hf&ust=1720834061094000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIib6MmsoIcDFQAAAAAdAAAAABAY",
                                            outlineRounded: 20,
                                            height: 246)),
                                    SizedBox(width: 20),
                                    Expanded(
                                        flex: 1,
                                        child: CustomRoundedImage(
                                            image:
                                                "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.bbcgoodfood.com%2Fhowto%2Fguide%2Fwhat-are-ultra-processed-foods&psig=AOvVaw0zWEYVggweICeC4zrIp9hf&ust=1720834061094000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIib6MmsoIcDFQAAAAAdAAAAABAY",
                                            outlineRounded: 20,
                                            height: 246)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 40),
                        ],
                      ),
                      // End Detail Three

                      Divider(),
                      GastroDetailFour(),
                      Divider(),
                      GastroDetailFive(),
                      Divider(),
                      GastroDetailSix(),
                      Divider(),
                      FootBar()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  BackgroundImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: Get.width,
          height: 400,
          child: FittedBox(
            child: Image.asset('assets/images/img_bg_detail_page.png'),
            fit: BoxFit.cover,
          )),
      Container(
        width: Get.width,
        height: 390,
        color: Colors.black.withOpacity(0.6),
        child: Center(
          child: Container(
            width: 957,
            height: 131,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'This is The Perfect Time To Get a New Travel Experience',
                style: GoogleFonts.orelegaOne(
                    fontSize: 60,
                    fontWeight: FontWeight.w400,
                    color: ONetralWhite),
                children: <TextSpan>[
                  TextSpan(
                    text: ' For You',
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
    ]);
  }
}
