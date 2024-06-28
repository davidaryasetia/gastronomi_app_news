import 'package:flutter/material.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/model/restaurant.dart';
import 'package:gastronomy/page/restaurant/restaurant_list_page/restraurant_body_list_page.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantListPage extends StatefulWidget {
  const RestaurantListPage({super.key});

  @override
  State<RestaurantListPage> createState() => _RestaurantListPageState();
}

class _RestaurantListPageState extends State<RestaurantListPage> {
  var gstate = Get.put(GlobalController());

  // Backend Program
  late Future<RestaurantData> futureRestaurants;

  // @override
  // void initState() {
  //   super.initState();
  //   gstate.selectedIndex.value = 2;
  //   print(gstate.selectedIndex.value);
  // }

  @override
  void initState() {
    super.initState();
    futureRestaurants = ApiService.fetchRestaurants();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: Stack(children: [
        Container(
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 64,
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
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: Get.width / 1536 * 150),
                  child: FutureBuilder<RestaurantData>(
                    future: futureRestaurants,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<Restaurant> restaurants = snapshot.data!.data;
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: restaurants.length,
                          itemBuilder: (context, index) {
                            return RestaurantBodyListPage(
                                restaurant: restaurants[index]);
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }
                      return CircularProgressIndicator();
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                const FootBar()
              ],
            ),
          ),
        ),
        // const CustomAppBar(),
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
