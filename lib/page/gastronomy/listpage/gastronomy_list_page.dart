import 'package:flutter/material.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/model/food.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../listpage/gastronomy_body_list_page.dart';

class ListGastronomyPage extends StatefulWidget {
  const ListGastronomyPage({super.key});

  @override
  State<ListGastronomyPage> createState() => _ListGastronomyPageState();
}

class _ListGastronomyPageState extends State<ListGastronomyPage> {
  // var c = Get.put(GlobalController());
  // var l = Get.put(GastronomyListPageController());

  // Backend Program
  late Future<FoodData> futureFoods;

  // @override
  // void initState() {
  //   super.initState();
  //   c.selectedIndex.value = 1;
  //   print(c.selectedIndex.value);
  //   l.getAllFoods(context);
  // }

  @override
  void initState() {
    super.initState();
    futureFoods = ApiService.fetchFoods();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                    width: Get.width,
                    height: 400,
                    child: FittedBox(
                      child: Image.asset('assets/images/img_menu_makanan.png'),
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
                          text: 'Feel a New Experience In Culinary Through',
                          style: GoogleFonts.orelegaOne(
                              fontSize: 60,
                              fontWeight: FontWeight.w400,
                              color: ONetralWhite),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Gastronomy',
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
              const SizedBox(height: 40),
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
                            text: ' Culinary',
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
              const SizedBox(height: 37),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Get.width / 1536 * 150),
                child: FutureBuilder<FoodData>(
                  future: futureFoods,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Food> foods = snapshot.data!.data;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: foods.length,
                        itemBuilder: (context, index) {
                          return GastronomyBodyListPage(food: foods[index]);
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    return CircularProgressIndicator();
                  },
                ),
              ),
            ],
          ),
        ),
        // const CustomAppBar(),
      ]),
    );
  }
}
