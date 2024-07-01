import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/model/restaurant.dart';
import 'package:gastronomy/page/restaurant/restaurant_detail_page/restaurant_detail_body.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/utils/html_parser_utils.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantDetailPage extends StatefulWidget {
  final int restaurantId;

  const RestaurantDetailPage({super.key, required this.restaurantId});

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  var gstate = Get.put(GlobalController());

  @override
  void initState() {
    super.initState();
    gstate.selectedIndex.value = 2;
    print(gstate.selectedIndex.value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Get.width / 1536 * 180),
                  child: Column(
                    children: [
                      FutureBuilder<RestaurantData>(
                        future:
                            ApiService.fetchRestaurantById(widget.restaurantId),
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
                            Restaurant restaurant = snapshot.data!.data.first;
                            List<String> foodList =
                                parseHtmlList(restaurant.listFood);
                            List<String> drinkList =
                                parseHtmlList(restaurant.listDrink);

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 100),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                              'https://admin-gastronomi.projectbase.site' +
                                                  restaurant.restaurantPhotos[0]
                                                      .photoPath,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 50),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                  "assets/images/ic_Address.png"),
                                              SizedBox(width: 10),
                                              Text(
                                                restaurant.address,
                                                style: GoogleFonts.nunito(
                                                    fontSize: 18),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            restaurant.nameRestaurant,
                                            style: GoogleFonts.orelegaOne(
                                                fontSize: 50,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                          SizedBox(height: 15),
                                          RichText(
                                            text: TextSpan(
                                              text: 'Buka: ',
                                              style: GoogleFonts.nunito(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w900),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text:
                                                      '${restaurant.openAt} - ${restaurant.closeAt}',
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 20),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 35),
                                          Container(
                                            child: Text(
                                              restaurant.description,
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
                                    Text("Restaurant ",
                                        style: GoogleFonts.orelegaOne(
                                            fontSize: 40)),
                                  ],
                                ),
                                SizedBox(height: 40),
                                Row(
                                  children: restaurant.restaurantPhotos
                                      .take(4)
                                      .expand((photo) => [
                                            Expanded(
                                              flex: 1,
                                              child: CustomRoundedImage(
                                                image:
                                                    'https://admin-gastronomi.projectbase.site' +
                                                        photo.photoPath,
                                                outlineRounded: 10,
                                                height: 198,
                                                width: Get.width,
                                              ),
                                            ),
                                            SizedBox(width: 20),
                                          ])
                                      .toList()
                                    ..removeLast(),
                                ),
                                SizedBox(height: 29),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Makanan",
                                              style: GoogleFonts.nunito(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 10),
                                          // Menggunakan parseHtmlList untuk mengubah HTML menjadi list
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: parseHtmlList(
                                                    restaurant.listFood)
                                                .map((food) => Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 4.0),
                                                      child: Text(food,
                                                          style: GoogleFonts
                                                              .nunito(
                                                                  fontSize:
                                                                      20)),
                                                    ))
                                                .toList(),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Minuman",
                                              style: GoogleFonts.nunito(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold)),
                                          SizedBox(height: 10),
                                          // Menggunakan parseHtmlList untuk mengubah HTML menjadi list
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: parseHtmlList(
                                                    restaurant.listDrink)
                                                .map((drink) => Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 4.0),
                                                      child: Text(drink,
                                                          style: GoogleFonts
                                                              .nunito(
                                                                  fontSize:
                                                                      20)),
                                                    ))
                                                .toList(),
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
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Lokasi Restaurant",
                                            style: GoogleFonts.orelegaOne(
                                                fontSize: 40)),
                                        SizedBox(height: 10),
                                        Text(
                                          restaurant.address,
                                          textAlign: TextAlign.justify,
                                        ).nunito30s().black(),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                        child: Container(
                                          height: 400,
                                          child: FittedBox(
                                            child: Image.network(
                                              'https://admin-gastronomi.projectbase.site' +
                                                  restaurant.restaurantPhotos[0]
                                                      .photoPath,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                              ],
                            );
                          } else {
                            return Center(
                              child: Text('No data available'),
                            );
                          }
                        },
                      ),
                      Divider(),
                    ],
                  ),
                ),
                FootBar(),
              ],
            ),
          ),
        ],
      ),
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
