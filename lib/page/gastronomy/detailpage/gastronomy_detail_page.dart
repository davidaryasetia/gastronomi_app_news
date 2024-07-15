import 'package:flutter/material.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/model/food.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_five.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_four.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_one.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_six.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_three.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastro_detail_two.dart';
import 'package:gastronomy/page/gastronomy/listpage/gastronomy_list_page_controller.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/utils/html_parser_utils.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GastronomyDetailPage extends StatefulWidget {
  final int foodId;

  GastronomyDetailPage({super.key, required this.foodId});

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
                      Column(
                        children: [
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                // textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: 'Discover',
                                  style: GoogleFonts.orelegaOne(
                                      fontSize: 55,
                                      fontWeight: FontWeight.w400,
                                      color: ONetralBlack),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' Wonderful',
                                      style: GoogleFonts.orelegaOne(
                                          fontSize: 55,
                                          fontWeight: FontWeight.w400,
                                          color: OPrimaryColor),
                                    ),
                                    TextSpan(
                                      text: ' Gastronomy',
                                      style: GoogleFonts.orelegaOne(
                                          fontSize: 55,
                                          fontWeight: FontWeight.w400,
                                          color: ONetralBlack),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 41),
                          Column(
                            children: [
                              const CustomRoundedImage(
                                height: 135,
                                image: 'assets/images/img_detail_long.png',
                                outlineRounded: 10,
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  const Expanded(
                                    flex: 1,
                                    child: CustomRoundedImage(
                                      height: 135,
                                      image: 'assets/images/img_detail_1.png',
                                      outlineRounded: 10,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                      flex: 1,
                                      child: CustomRoundedImage(
                                        image: "assets/images/img_detail_2.png",
                                        outlineRounded: 10,
                                        height: 135,
                                        width: Get.width,
                                      )),
                                  SizedBox(width: 10),
                                  Expanded(
                                      flex: 1,
                                      child: CustomRoundedImage(
                                        image: "assets/images/img_detail_3.png",
                                        outlineRounded: 10,
                                        height: 135,
                                        width: Get.width,
                                      )),
                                  SizedBox(width: 10),
                                  Expanded(
                                      flex: 1,
                                      child: CustomRoundedImage(
                                        image: "assets/images/img_detail_4.png",
                                        outlineRounded: 10,
                                        height: 135,
                                        width: Get.width,
                                      )),
                                  SizedBox(width: 10),
                                  Expanded(
                                      flex: 1,
                                      child: CustomRoundedImage(
                                        image: "assets/images/img_detail_5.png",
                                        outlineRounded: 10,
                                        height: 135,
                                        width: Get.width,
                                      )),
                                  SizedBox(width: 10),
                                  Expanded(
                                      flex: 1,
                                      child: CustomRoundedImage(
                                        image: "assets/images/img_detail_6.png",
                                        outlineRounded: 10,
                                        height: 135,
                                        width: Get.width,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 42),
                          Text(
                            "All existing food and beverages are produced from raw materials sourced from nature with the help of human hands. Any raw materials such as vegetables, fruit, and chicken or beef can be found easily on the islands of lombok. Coconut, coffee, cloves, tobacco, tamarind, areca nut and many types of agricultural and plantation crops can be found here. Every raw material for vegetables, fruits, and meat animals is cultivated properly by farmers and ranchers. Within a certain period each raw material will enter the ripe stage and ready to be harvested and goes to the sorting stage on the best products for the best quality in food.",
                            textAlign: TextAlign.justify,
                          ).nunito20s().black(),
                          SizedBox(height: 30),
                        ],
                      ),
                      Divider(),
                      //  Detail Two
                      FutureBuilder<FoodData>(
                          future: ApiService.fetchFoodsById(widget.foodId),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            } else if (snapshot.hasError) {
                              return Center(
                                child: Text('Error: ${snapshot.error}'),
                              );
                            } else if (snapshot.hasData &&
                                snapshot.data!.data.isNotEmpty) {
                              Food food = snapshot.data!.data.first;
                              return Column(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              child: Container(
                                                width: 427,
                                                height: 232,
                                                child: FittedBox(
                                                  child: Image.network(
                                                      "https://admin-gastronomi.projectbase.site" +
                                                          food.photoPath),
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                            "Traditional Food")
                                                        .nunito20s()
                                                        .primary(),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Image.asset(
                                                            "assets/images/ic_location_primary.png"),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(food.address)
                                                            .nunito18s()
                                                            .black(),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                Text(food.name)
                                                    .orelega50s()
                                                    .black(),
                                                SizedBox(height: 15),
                                                Container(
                                                  child: Text(
                                                    food.description,
                                                    textAlign:
                                                        TextAlign.justify,
                                                  ).nunito20s().black(),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 40),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Text("History")
                                              .orelega40s()
                                              .black(),
                                        ],
                                      ),
                                      SizedBox(height: 29),
                                      Row(
                                        children: food.photos
                                            .take(4)
                                            .expand((photo) => [
                                                  Expanded(
                                                    flex: 1,
                                                    child: CustomRoundedImage(
                                                      image:
                                                          'https://admin-gastronomi.projectbase.site' +
                                                              photo.photo,
                                                      outlineRounded: 10,
                                                      height: 198,
                                                      width: Get.width,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                ])
                                            .toList()
                                          ..removeLast(),
                                      ),
                                      SizedBox(height: 29),
                                      Text(
                                        food.foodHistorical,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Text("Culture")
                                              .orelega40s()
                                              .black(),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            child: Container(
                                              width: 230,
                                              height: 150,
                                              child: FittedBox(
                                                child: Image.network(
                                                    'https://admin-gastronomi.projectbase.site' +
                                                        food.photoPath),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Text("Food Party Of Life Style")
                                              .orelega40s()
                                              .black(),
                                        ],
                                      ),
                                      SizedBox(height: 12),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                                          "https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1622207103/Indonesian-Food-Main/Indonesian-Food-Main.jpg",
                                                      outlineRounded: 20,
                                                      height: 246,
                                                    )),
                                                SizedBox(width: 20),
                                                Expanded(
                                                    flex: 1,
                                                    child: CustomRoundedImage(
                                                        image:
                                                            "https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1622207103/Indonesian-Food-Main/Indonesian-Food-Main.jpg",
                                                        outlineRounded: 20,
                                                        height: 246)),
                                                SizedBox(width: 20),
                                                Expanded(
                                                    flex: 1,
                                                    child: CustomRoundedImage(
                                                        image:
                                                            "https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1622207103/Indonesian-Food-Main/Indonesian-Food-Main.jpg",
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
                                                            "https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1622207103/Indonesian-Food-Main/Indonesian-Food-Main.jpg",
                                                        outlineRounded: 20,
                                                        height: 246)),
                                                SizedBox(width: 20),
                                                Expanded(
                                                    flex: 1,
                                                    child: CustomRoundedImage(
                                                        image:
                                                            "https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1622207103/Indonesian-Food-Main/Indonesian-Food-Main.jpg",
                                                        outlineRounded: 20,
                                                        height: 246)),
                                                SizedBox(width: 20),
                                                Expanded(
                                                    flex: 1,
                                                    child: CustomRoundedImage(
                                                        image:
                                                            "https://res.cloudinary.com/rainforest-cruises/images/c_fill,g_auto/f_auto,q_auto/v1622207103/Indonesian-Food-Main/Indonesian-Food-Main.jpg",
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
                                  // Detail Four
                                  Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Text("Let’s Make Ayam Taliwang")
                                              .orelega40s()
                                              .black(),
                                        ],
                                      ),
                                      SizedBox(height: 25),
                                      // ClipRRect(
                                      //   borderRadius: BorderRadius.circular(40),
                                      //   child: YoutubePlayerScaffold(
                                      //     controller: _controller,
                                      //     aspectRatio: 16 / 5,
                                      //     builder: (context, player) {
                                      //       return Column(
                                      //         children: [
                                      //           player,
                                      //           // Text('Youtube Player'),
                                      //         ],
                                      //       );
                                      //     },
                                      //   ),
                                      // ),
                                      SizedBox(height: 25),
                                      // Row(
                                      //   children: [
                                      //     Expanded(
                                      //       child: Column(
                                      //         children: [
                                      //           // ClipRRect(
                                      //           //   borderRadius: BorderRadius.all(Radius.circular(20)),
                                      //           //   child: Container(
                                      //           //     // width:   230,
                                      //           //     height:   342.5,
                                      //           //     child: FittedBox(
                                      //           //       child: Image.asset("assets/images/img_recipe_ayam.png"),
                                      //           //       fit: BoxFit.cover,
                                      //           //     ),
                                      //           //   ),
                                      //           // ),
                                      //           RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height:   125),
                                      //           SizedBox(height:   20.5),
                                      //           RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height:   125),
                                      //         ],
                                      //       ),
                                      //     ),
                                      //     SizedBox(width:   20),
                                      //     Expanded(flex: 1, child: RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height:   250, width:   590)),
                                      //   ],
                                      // ),
                                      // SizedBox(height:   40),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text("Main Ingredients")
                                                    .nunito25eb()
                                                    .black(),
                                                SizedBox(height: 10),
                                                Container(
                                                  width: Get.width,
                                                  height: 320,
                                                  child: ListView.builder(
                                                    itemCount: parseHtmlList(
                                                            food.ingredients)
                                                        .length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      final ingredient =
                                                          parseHtmlList(food
                                                                  .ingredients)[
                                                              index];
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 4.0),
                                                        child: Text(
                                                          '- ${ingredient}',
                                                          style: GoogleFonts
                                                              .nunito(
                                                                  fontSize: 20),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 40),
                                    ],
                                  ),
                                  // End Detail Four

                                  Divider(),

                                  // Detail Five
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              children: [
                                                CustomRoundedImage(
                                                  image:
                                                      'https://admin-gastronomi.projectbase.site' +
                                                          food.photoPath,
                                                  outlineRounded: 20,
                                                  height: 280,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 35),
                                          Expanded(
                                            flex: 2,
                                            child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text("Directions:")
                                                    .nunito25eb()
                                                    .black(),
                                                SizedBox(height: 10),
                                                Container(
                                                  width: Get.width,
                                                  height: 500,
                                                  child: ListView.builder(
                                                    itemCount: parseHtmlList(
                                                            food.directions)
                                                        .length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      final directions =
                                                          parseHtmlList(food
                                                                  .directions)[
                                                              index];
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 4.0),
                                                        child: Text(
                                                          '${index + 1}. $directions',
                                                          style: GoogleFonts
                                                              .nunito(
                                                                  fontSize: 20),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      // Row(
                                      //   children: [
                                      //     Expanded(
                                      //       flex: 1,
                                      //       child: CustomRoundedImage(
                                      //         image:
                                      //             "assets/images/img_recipe_ayam.png",
                                      //         outlineRounded: 20,
                                      //         height: 280,
                                      //       ),
                                      //     ),
                                      //     SizedBox(width: 27),
                                      //     Expanded(
                                      //       flex: 1,
                                      //       child: CustomRoundedImage(
                                      //         image:
                                      //             "assets/images/img_recipe_ayam.png",
                                      //         outlineRounded: 20,
                                      //         height: 280,
                                      //       ),
                                      //     ),
                                      //     SizedBox(width: 27),
                                      //     Expanded(
                                      //       flex: 1,
                                      //       child: CustomRoundedImage(
                                      //         image:
                                      //             "assets/images/img_recipe_ayam.png",
                                      //         outlineRounded: 20,
                                      //         height: 280,
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                  // End Detail Five

                                  Divider(),
                                  // Detail Six
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Text("Nutrition")
                                              .orelega40s()
                                              .black(),
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: CustomRoundedImage(
                                              image:
                                                  "assets/images/img_nutrition.png",
                                              outlineRounded: 20,
                                              height: 280,
                                              width: 280,
                                            ),
                                          ),
                                          SizedBox(width: 35),
                                          Expanded(
                                              flex: 2,
                                              child: Text(
                                                food.nutrition,
                                                textAlign: TextAlign.justify,
                                              ).nunito20s())
                                        ],
                                      ),
                                      SizedBox(height: 80),
                                      // Row(
                                      //   mainAxisAlignment: MainAxisAlignment.start,
                                      //   children: [
                                      //     const Text("Restaurant").orelega40s().black(),
                                      //   ],
                                      // ),
                                      // SizedBox(height:   20),
                                      // Row(
                                      //   mainAxisAlignment: MainAxisAlignment.end,
                                      //   crossAxisAlignment: CrossAxisAlignment.end,
                                      //   children: [
                                      //     OnHoverButton(
                                      //       child: BaseButton(
                                      //         ontap: () {
                                      //           Get.to(RestaurantNewAdd());
                                      //         },
                                      //         color: OPrimaryColor,
                                      //         text: "Tambahkan data Restaurant Yang Kamu Tau !",
                                      //         textSize: 20,
                                      //         textWeight: FontWeight.w900,
                                      //         // textStyle: TextStyle(texS: 25, fontWeight: FontWeight.w900),
                                      //         // GoogleFonts.nunito(fontSize: 40, fontWeight: FontWeight.w900),
                                      //         textColor: Colors.white,
                                      //         outlineRadius: 20,
                                      //         width: 570,
                                      //         height: 75,
                                      //       ),
                                      //     )
                                      //   ],
                                      // ),
                                      // SizedBox(height:   30),
                                      // Container(
                                      //     width: Get.width,
                                      //     height:   750,
                                      //     child: ListView.builder(
                                      //       // padding: const EdgeInsets.all(8),
                                      //       itemCount: restaurants.length,
                                      //       itemBuilder: (BuildContext context, int index) {
                                      //         return Column(
                                      //           crossAxisAlignment: CrossAxisAlignment.start,
                                      //           children: [
                                      //             ListItem()
                                      //             // Text('${index + 1}. ${directions[index]}').nunito20s().black(),
                                      //             // SizedBox(height:   2),
                                      //           ],
                                      //         );
                                      //       },
                                      //     ))
                                      // Container(
                                      //   height:  750,
                                      //   width: Get.width,
                                      //   child: Column(
                                      //     children: [
                                      //       ListItem()
                                      //     ],
                                      //   ),
                                      // )
                                    ],
                                  ),
                                  // End Detail Six
                                ],
                              );
                            } else {
                              return Center(
                                child: Text('No Data Available'),
                              );
                            }
                          }),

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
