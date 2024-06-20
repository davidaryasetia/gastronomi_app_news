import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CultureDetailPage extends StatefulWidget {
  const CultureDetailPage({super.key});

  @override
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
                      child: Image.asset('assets/images/img_bg_detail_culture.png'),
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
                          style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: ONetralWhite),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Cultures',
                              style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: OPrimaryColor),
                            ),
                            TextSpan(
                              text: ' and',
                              style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: ONetralWhite),
                            ),
                            TextSpan(
                              text: ' Tradition',
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
                            style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: ONetralBlack),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Culture',
                                style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: OPrimaryColor),
                              ),
                              TextSpan(
                                text: ' &',
                                style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: ONetralBlack),
                              ),
                              TextSpan(
                                text: ' Tradition',
                                style: GoogleFonts.orelegaOne(fontSize: 55, fontWeight: FontWeight.w400, color: OPrimaryColor),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 82),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          height: 200,
                          child: FittedBox(
                            child: Image.asset("assets/images/img_recipe_ayam.png"),
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
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          height: 200,
                          child: FittedBox(
                            child: Image.asset("assets/images/img_recipe_ayam.png"),
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
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          height: 200,
                          child: FittedBox(
                            child: Image.asset("assets/images/img_recipe_ayam.png"),
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
                      "Traditional Dance",
                      // maxLines: 6,
                    ).nunito15s().primary(),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Gendang Beleqe",
                      // maxLines: 6,
                    ).orelega40s().black(),
                    SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Gendang Beleq is a traditional musical instrument that is played in groups. Gendang Beleq comes from the Sasak Tribe, Lombok, West Nusa Tenggara, Indonesia. The origin of the word drum comes from the sound of the drum itself, namely the sound of deng or dung. Beleq comes from the Sasak language which means big.[2] Gendang Beleq means big drum., HISTORY In the past, in Lombok, the Beleq drum was used as an encouragement for soldiers who went to war and who returned from war. Thus, the Beleq drum was used as music in war. Now Gendang Beleq is used as musical accompaniment in traditional ceremonies such as Merariq (wedding), circumcision (circumcision), Ngurisang (baby haircut or aqiqah) and begawe beleq (big ceremony). How to Play The Beleq drums are played in groups to form an orchestra. The Gendang Beleq Orchestra consists of two Gendang Beleq called mama (male) and gendang nina (female) which function as carriers of dynamics. It also consists of a Codeq drum (small drum), a belek perembak and Kodeq perembak as rhythmic instruments, a gong and two reogs, namely reog nina and reog mama as melodic carriers. Gendang Beleq players play Gendang Beleq while dancing. Gendang beleq players consist of 13 to 17 people. Score The Beleq drum has philosophical values ​​and is also sacred by the Sasak people. The Sasak people consider Gendang Beleq to have the value of beauty, perseverance, patience, wisdom, thoroughness, and heroism. These values ​​are always expected to blend with the hearts of the Sasak people",
                      // maxLines: 6,
                      textAlign: TextAlign.justify,
                    ).nunito15s().black(),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Food Served",
                      // maxLines: 6,
                    ).orelega40s().black(),
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
                              height: 200,
                              child: FittedBox(
                                child: Image.asset("assets/images/img_recipe_ayam.png"),
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
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              height: 200,
                              child: FittedBox(
                                child: Image.asset("assets/images/img_recipe_ayam.png"),
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
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              height: 200,
                              child: FittedBox(
                                child: Image.asset("assets/images/img_recipe_ayam.png"),
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
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              height: 200,
                              child: FittedBox(
                                child: Image.asset("assets/images/img_recipe_ayam.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Gendang Beleq Dance",
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
                          gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{},
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
