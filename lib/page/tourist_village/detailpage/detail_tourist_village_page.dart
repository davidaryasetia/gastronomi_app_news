import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gastronomy/api/api_service.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/model/village.dart';
import 'package:gastronomy/page/tourist_village/mainpage/tourist_body.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_chatbot.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class DetailTouristVillagePage extends StatefulWidget {
  final int villagesId;

  const DetailTouristVillagePage({super.key, required this.villagesId});

  @override
  State<DetailTouristVillagePage> createState() =>
      _DetailTouristVillagePageState();
}

class _DetailTouristVillagePageState extends State<DetailTouristVillagePage> {
  var c = Get.put(GlobalController());
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Bj2kAAKt_cE',
    autoPlay: false,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.scheduleFrameCallback((timeStamp) async {
      c.selectedIndex.value = 4;
      print(c.selectedIndex.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: const CustomAppbar(),
        body: Stack(children: [
          ListView(children: [
            Column(
              children: [
                currentWidth < 800
                    ? Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 100,
                                        child: RichText(
                                          text: TextSpan(
                                            text:
                                                'Explore Exciting Destinations Shrouded ',
                                            style: GoogleFonts.orelegaOne(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w400,
                                                color: ONetralBlack),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Nusa Tenggara',
                                                style: GoogleFonts.orelegaOne(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w400,
                                                    color: OPrimaryColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 400,
                                        height: 150,
                                        child: const Text(
                                                "Lombok Island has a variety of unique customs and ceremonies that can give you something new..")
                                            .nunito15b()
                                            .black()
                                            .animate()
                                            .fadeIn(
                                                delay: 300.ms, duration: 500.ms)
                                            .then() // sets own delay to 800ms (300+500)
                                            .slide(duration: 400.ms),
                                      ),
                                      // SizedBox(height: 20),
                                      OnHoverButton(
                                        child: BaseButton(
                                          ontap: () {
                                            // Get.to(const CultureListPage());6
                                          },
                                          width: 200,
                                          height: 50,
                                          text: "Explore The Culture",
                                          textSize: 15,
                                          textWeight: FontWeight.w600,
                                          color: OPrimaryColor,
                                          outlineRadius: 30,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                            "assets/images/img_bg_village.png"),
                                      ],
                                    )),
                              ],
                            ),
                            const SizedBox(height: 50),
                          ],
                        ))
                    : Stack(children: [
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Stack(children: [
                                Container(
                                    width: Get.width,
                                    height: 400,
                                    child: FittedBox(
                                      child: Image.asset(
                                          'assets/images/img_bg_village.png'),
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
                              FutureBuilder<VillageData>(
                                future: ApiService.fetchVillageById(
                                    widget.villagesId),
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
                                    Village village = snapshot.data!.data.first;
                                    return Column(
                                      children: [
                                        // Layout 1
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 80.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  BaseButton(
                                                    ontap: () {},
                                                    color: Color(0xffE8E8E8),
                                                    height: 40,
                                                    width: 136,
                                                    text: "Tourist Village",
                                                    outlineRadius: 8,
                                                    textColor: ONetralBlack,
                                                    textSize: 16,
                                                    textWeight: FontWeight.w600,
                                                  ),
                                                  BaseButton(
                                                    ontap: () {},
                                                    color: Color(0xffE8E8E8),
                                                    height: 40,
                                                    width: 117,
                                                    icon: Icons.share,
                                                    text: "Share",
                                                    outlineRadius: 10,
                                                    textColor: ONetralBlack,
                                                    textSize: 16,
                                                    textWeight: FontWeight.w600,
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 40),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    village.nameVillage,
                                                  ).orelega40s(),
                                                ],
                                              ),
                                              SizedBox(height: 30),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Waktu Operasional",
                                                  ).orelega40s(),
                                                ],
                                              ),
                                              SizedBox(height: 16),
                                              Container(
                                                height: 110,
                                                width: Get.width,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 30,
                                                    vertical: 10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                16)),
                                                    color: ONetralWhite,
                                                    border: Border.all(
                                                        color: ONetralBlack)),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Sekarang Buka",
                                                    ).nunito30m().greenSmooth(),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      "${village.openAt} - ${village.closeAt}",
                                                    ).nunito30m(),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 40),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Village Profile",
                                                  ).orelega30s(),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(40),
                                          child: Wrap(
                                            direction: Axis.horizontal,
                                            spacing: 50.0,
                                            runSpacing: 50,
                                            children: [
                                              Row(
                                                children: village.villagePhotos
                                                    .take(4)
                                                    .expand((photo) => [
                                                          Expanded(
                                                            flex: 1,
                                                            child:
                                                                CustomRoundedImage(
                                                              image: 'https://admin-gastronomi.projectbase.site' +
                                                                  photo
                                                                      .photoPath,
                                                              outlineRounded:
                                                                  10,
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
                                              )
                                            ],
                                          ),
                                        ),
                                        // End Layout 1

                                        // Layout 2
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 80.0),
                                          child: Column(
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
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Description",
                                                        ).orelega30s(),
                                                        SizedBox(height: 16),
                                                        Text(
                                                          village
                                                              .mandatoryEquipment,
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ).nunito20s().black(),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 50,
                                                        ),
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(40),
                                                          child:
                                                              YoutubePlayerScaffold(
                                                            controller:
                                                                _controller,
                                                            aspectRatio: 5 / 5,
                                                            builder: (context,
                                                                player) {
                                                              return Column(
                                                                children: [
                                                                  player,
                                                                  // Text('Youtube Player'),
                                                                ],
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 30),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "location",
                                                  ).orelega30s(),
                                                ],
                                              ),
                                              SizedBox(height: 16),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(village.address)
                                                      .nunito20s()
                                                      .black(),
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                                child: Container(
                                                  width: Get.width,
                                                  height: 400,
                                                  child: FittedBox(
                                                    child: Image.asset(
                                                        "assets/images/img_lombok_island.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              OnHoverButton(
                                                child: BaseButton(
                                                  ontap: () => _launchUrl(
                                                      'https://pub.dev/packages/url_launcher'),
                                                  color: OGoodGreen,
                                                  height: 40,
                                                  width: Get.width,
                                                  text: "Buka Map",
                                                  icon: Icons
                                                      .arrow_circle_right_rounded,
                                                  iconColor: ONetralWhite,
                                                  outlineRadius: 8,
                                                  textColor: ONetralWhite,
                                                  textSize: 16,
                                                  textWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(height: 40),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Fasilitas",
                                                  ).orelega30s(),
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: Text(
                                                      village.facility,
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ).nunito20s().black(),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 40),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Kontak",
                                                  ).orelega30s(),
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: OnHoverButton(
                                                      child: Container(
                                                        height: 125,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 30,
                                                                vertical: 20),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            20)),
                                                            border: Border.all(
                                                                color:
                                                                    ONetralBlack)),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "Kontak",
                                                                ).nunito30s(),
                                                                Icon(Icons
                                                                    .add_call)
                                                              ],
                                                            ),
                                                            Text(
                                                              "Hubungi",
                                                            ).nunito30b(),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Expanded(
                                                    flex: 1,
                                                    child: OnHoverButton(
                                                      child: Container(
                                                        height: 125,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 30,
                                                                vertical: 20),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            20)),
                                                            border: Border.all(
                                                                color:
                                                                    ONetralBlack)),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  "Kunjungi",
                                                                ).nunito30s(),
                                                                Icon(Icons
                                                                    .call_missed_outgoing_outlined)
                                                              ],
                                                            ),
                                                            Text(
                                                              "Website",
                                                            ).nunito30b(),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Media Sosial",
                                                  ).orelega30s(),
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Container(
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            color:
                                                                Colors.grey))),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              Icons.facebook,
                                                              size: 35,
                                                            ),
                                                            SizedBox(
                                                              width: 20,
                                                            ),
                                                            Text(
                                                              "Facebook",
                                                            ).orelega30s(),
                                                          ],
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .call_missed_outgoing,
                                                          size: 35,
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              Container(
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            color:
                                                                Colors.grey))),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              Icons.facebook,
                                                              size: 35,
                                                            ),
                                                            SizedBox(
                                                              width: 20,
                                                            ),
                                                            Text(
                                                              "Instagram",
                                                            ).orelega30s(),
                                                          ],
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .call_missed_outgoing,
                                                          size: 35,
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              Container(
                                                height: 40,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            color:
                                                                Colors.grey))),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Icon(
                                                              Icons.facebook,
                                                              size: 35,
                                                            ),
                                                            SizedBox(
                                                              width: 20,
                                                            ),
                                                            Text(
                                                              "Twitter",
                                                            ).orelega30s(),
                                                          ],
                                                        ),
                                                        Icon(
                                                          Icons
                                                              .call_missed_outgoing,
                                                          size: 35,
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Mandatory Equipment",
                                                  ).orelega30s(),
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: Text(
                                                      village
                                                          .mandatoryEquipment,
                                                      textAlign:
                                                          TextAlign.justify,
                                                    ).nunito20s().black(),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  } else {
                                    return Center(
                                      child: Text('No Data Available'),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        // const CustomAppBar(),
                      ]),
                // SizedBox(height: Get.height * 0.15),
              ],
            ),
            Divider(),
            FootBar()
          ]),
          CustomChatbot(),
        ])
        // HomeBody(),
        );
  }
}

// final Uri _url = Uri.parse('https://flutter.dev');

Future<void> _launchUrl(dynamic url) async {
  if (!await launchUrl(Uri.parse('$url'))) {
    throw Exception('Could not launch $url');
  }
}

Widget ItemVillage() {
  return OnHoverButton(
    child: GestureDetector(
      // onTap: () {
      //   Get.to(DetailTouristVillagePage());
      // },
      child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Stack(
            children: [
              Container(
                height: 270,
                width: Get.width * 1 / 3 - 80,
                child: FittedBox(
                  child: Image.asset("assets/images/img_recipe_ayam.png"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 270,
                width: Get.width * 1 / 3 - 80,
                color: Colors.black.withOpacity(0.3),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Desa Redut Tutubhahda").nunito15b().white(),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "This location is a traditional village area which is the beiggest village in lombok",
                        maxLines: 2,
                      ).nunito10s().white(),
                    ]),
              )
            ],
          )),
    ),
  );
}
