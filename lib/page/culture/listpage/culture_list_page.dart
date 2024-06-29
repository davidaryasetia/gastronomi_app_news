import 'package:flutter/material.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/model/culture.dart';
import 'package:gastronomy/model/restaurant.dart';
import 'package:gastronomy/page/culture/detailpage/culture_detail_page.dart';
import 'package:gastronomy/page/culture/listpage/culture_body_list_page.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CultureListPage extends StatefulWidget {
  const CultureListPage({super.key});

  @override
  State<CultureListPage> createState() => _CultureListPageState();
}

class _CultureListPageState extends State<CultureListPage> {
// Backend Progream
  late Future<CultureData> futureCultures;

  var c = Get.put(GlobalController());
  // @override
  // void initState() {
  //   super.initState();
  //   c.selectedIndex.value = 3;
  //   print(c.selectedIndex.value);
  // }

  @override
  void initState() {
    super.initState();
    futureCultures = ApiService.fetchCultures();
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
                      child: Image.asset('assets/images/img_bg_culture.png'),
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
                          text: 'Lombok has a variety of',
                          style: GoogleFonts.orelegaOne(
                              fontSize: 60,
                              fontWeight: FontWeight.w400,
                              color: ONetralWhite),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Cultures',
                              style: GoogleFonts.orelegaOne(
                                  fontSize: 60,
                                  fontWeight: FontWeight.w400,
                                  color: OPrimaryColor),
                            ),
                            TextSpan(
                              text: ' and',
                              style: GoogleFonts.orelegaOne(
                                  fontSize: 60,
                                  fontWeight: FontWeight.w400,
                                  color: ONetralWhite),
                            ),
                            TextSpan(
                              text: ' Tradition',
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
                            text: 'Let’s See Wonderful',
                            style: GoogleFonts.orelegaOne(
                                fontSize: 55,
                                fontWeight: FontWeight.w400,
                                color: ONetralBlack),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Culture',
                                style: GoogleFonts.orelegaOne(
                                    fontSize: 55,
                                    fontWeight: FontWeight.w400,
                                    color: OPrimaryColor),
                              ),
                              TextSpan(
                                text: ' &',
                                style: GoogleFonts.orelegaOne(
                                    fontSize: 55,
                                    fontWeight: FontWeight.w400,
                                    color: ONetralBlack),
                              ),
                              TextSpan(
                                text: ' Tradition',
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
              const SizedBox(height: 37),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Get.width / 1536 * 150),
                child: FutureBuilder<CultureData>(
                  future: futureCultures,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Culture> cultures = snapshot.data!.data;
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: cultures.length,
                        itemBuilder: (context, index) {
                          return CultureBodyListPage(culture: cultures[index]);
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
