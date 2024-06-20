import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/gastronomy/listpage/gastronomy_list_page_controller.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../detailpage/gastronomy_detail_page.dart';

class ListGastronomyPage extends StatefulWidget {
  const ListGastronomyPage({super.key});

  @override
  State<ListGastronomyPage> createState() => _ListGastronomyPageState();
}

class _ListGastronomyPageState extends State<ListGastronomyPage> {
  var c = Get.put(GlobalController());
  var l = Get.put(GastronomyListPageController());

  @override
  void initState() {
    super.initState();
    c.selectedIndex.value = 1;
    print(c.selectedIndex.value);
    l.getAllFoods(context);
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
                          style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: ONetralWhite),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Gastronomy',
                              style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: OPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              SizedBox(height: 40),
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
                        style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: ONetralBlack),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Culinary',
                            style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: OPrimaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37),
              Obx(() => (l.foodsLoading.value)
                  ? ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: l.foods.length,
                      itemBuilder: (BuildContext context, int index) => ListItem(
                            index: index,
                          ))
                  : CircularProgressIndicator())
            ],
          ),
        ),
        // const CustomAppBar(),
      ]),
    );
  }
}

class ListItem extends StatelessWidget {
  ListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  var l = Get.put(GastronomyListPageController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 80),
          child: GestureDetector(
            onTap: () {
              Get.to(GastronomyDetailPage(
                index: index,
              ));
            },
            child: OnHoverButton(
              child: Column(
                children: [
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
                              child: Image.network("http://gapulo.tech${l.foods[index].culturePictures[0].picture}", fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) {
                                return Column(
                                  children: [
                                    Container(
                                      height: 80,
                                      color: Colors.white,
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.warning_rounded,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                          Text(
                                            'No Available Image',
                                            style: TextStyle(fontSize: 10, color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              }, loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) return child;
                                return SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes! : null,
                                  ),
                                );
                              }),
                              // Image.asset("assets/images/img_recipe_ayam.png"),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(l.foods[index].name).nunito20s().black(),
                                Row(
                                  children: [
                                    Image.asset("assets/images/ic_location_primary.png"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Lombok").nunito18s().black(),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(l.foods[index].name).nunito30b().black(),
                            SizedBox(height: 15),
                            Text(
                              l.foods[index].description,
                              maxLines: 4,
                            ).nunito20s().black(),
                            SizedBox(height: 30),
                            GestureDetector(onTap: () {}, child: const Text("Learn it more...").nunito25s().primary()),
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
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
