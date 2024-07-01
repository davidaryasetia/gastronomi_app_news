import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/model/culture.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CultureDetailPage extends StatefulWidget {
  final int culturesId;

  const CultureDetailPage({super.key, required this.culturesId});

  State<CultureDetailPage> createState() => _CultureDetailPageState();
}

class _CultureDetailPageState extends State<CultureDetailPage> {
  var c = Get.put(GlobalController());
  @override
  void initState() {
    super.initState();
    c.selectedIndex.value = 3;
    print(c.selectedIndex.value);
  }

  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Bj2kAAKt_cE',
    autoPlay: false,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: Stack(children: [
        SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Stack(children: [
                Container(
                    width: Get.width,
                    height: 400,
                    child: FittedBox(
                      child: Image.asset(
                          'assets/images/img_bg_detail_culture.png'),
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
              SizedBox(height: 37),

              FutureBuilder<CultureData>(
                future: ApiService.fetchCultureById(widget.culturesId),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  } else if (snapshot.hasData &&
                      snapshot.data!.data.isNotEmpty) {
                    Culture culture = snapshot.data!.data.first;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 82),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: Container(
                                    height: 200,
                                    child: FittedBox(
                                      child: Image.network(
                                          'https://admin-gastronomi.projectbase.site' +
                                              culture.photoPath),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: Container(
                                    height: 200,
                                    child: FittedBox(
                                      child: Image.network(
                                          'https://admin-gastronomi.projectbase.site' +
                                              culture.photoPath),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  child: Container(
                                    height: 200,
                                    child: FittedBox(
                                      child: Image.network(
                                          'https://admin-gastronomi.projectbase.site' +
                                              culture.photoPath),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 82),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Traditional Cultures Of Lombok",
                                // maxLines: 6,
                              ).nunito15s().primary(),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                culture.nameCulture,
                                // maxLines: 6,
                              ).orelega40s().black(),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                culture.description,
                                // maxLines: 6,
                                textAlign: TextAlign.justify,
                              ).nunito15s().black(),
                              SizedBox(
                                height: 20,
                              ),
                              // const Text(
                              //   "Food Served",
                              //   // maxLines: 6,
                              // ).orelega40s().black(),
                              // SizedBox(
                              //   height: 20,
                              // ),
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       flex: 1,
                              //       child: ClipRRect(
                              //         borderRadius:
                              //             BorderRadius.all(Radius.circular(20)),
                              //         child: Container(
                              //           height: 200,
                              //           child: FittedBox(
                              //             child: Image.asset(
                              //                 "assets/images/img_recipe_ayam.png"),
                              //             fit: BoxFit.cover,
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //     SizedBox(
                              //       width: 20,
                              //     ),
                              //     Expanded(
                              //       flex: 1,
                              //       child: ClipRRect(
                              //         borderRadius:
                              //             BorderRadius.all(Radius.circular(20)),
                              //         child: Container(
                              //           height: 200,
                              //           child: FittedBox(
                              //             child: Image.asset(
                              //                 "assets/images/img_recipe_ayam.png"),
                              //             fit: BoxFit.cover,
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //     SizedBox(
                              //       width: 20,
                              //     ),
                              //     Expanded(
                              //       flex: 1,
                              //       child: ClipRRect(
                              //         borderRadius:
                              //             BorderRadius.all(Radius.circular(20)),
                              //         child: Container(
                              //           height: 200,
                              //           child: FittedBox(
                              //             child: Image.asset(
                              //                 "assets/images/img_recipe_ayam.png"),
                              //             fit: BoxFit.cover,
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //     SizedBox(
                              //       width: 20,
                              //     ),
                              //     Expanded(
                              //       flex: 1,
                              //       child: ClipRRect(
                              //         borderRadius:
                              //             BorderRadius.all(Radius.circular(20)),
                              //         child: Container(
                              //           height: 200,
                              //           child: FittedBox(
                              //             child: Image.asset(
                              //                 "assets/images/img_recipe_ayam.png"),
                              //             fit: BoxFit.cover,
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                culture.nameCulture,
                                // maxLines: 6,
                              ).orelega40s().black(),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 220),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: YoutubePlayerScaffold(
                                    gestureRecognizers: <Factory<
                                        OneSequenceGestureRecognizer>>{},
                                    controller: _controller,
                                    aspectRatio: 16 / 6,
                                    builder: (context, player) {
                                      return Column(
                                        children: [
                                          player,
                                          // Text('Youtube Player'),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Center(
                      child: Text('No Data Available'),
                    );
                  }
                },
              ),
              // Starting

              // End
              SizedBox(height: 25),
              Divider(),
              FootBar()
            ],
          ),
        ),
        // const CustomAppBar(),
      ]),
    );
  }
}
