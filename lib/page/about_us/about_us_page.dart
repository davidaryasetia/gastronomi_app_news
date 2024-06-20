import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/tourist_village/mainpage/tourist_body.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_chatbot.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
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
      c.selectedIndex.value = 5;
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
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 200,
                                        height: 100,
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Explore Exciting Destinations Shrouded ',
                                            style: GoogleFonts.orelegaOne(fontSize: 25, fontWeight: FontWeight.w400, color: ONetralBlack),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Nusa Tenggara',
                                                style: GoogleFonts.orelegaOne(fontSize: 25, fontWeight: FontWeight.w400, color: OPrimaryColor),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 400,
                                        height: 150,
                                        child: const Text("Lombok Island has a variety of unique customs and ceremonies that can give you something new..")
                                            .nunito15b()
                                            .black()
                                            .animate()
                                            .fadeIn(delay: 300.ms, duration: 500.ms)
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
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset("assets/images/img_bg_village.png"),
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
                                      child: Image.asset('assets/images/img_bg_village.png'),
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
                              SizedBox(
                                height: 50,
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 80.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "About Us",
                                              ).orelega40s(),
                                              SizedBox(height: 20),
                                              Text(
                                                "This site is a supporting site for the Ministry of Creative Economy and the Republic of Indonesia's program, the Thoughtful Indonesia program. All content and writings listed on this site are intended to provide information and not for commercial purposes. the sales displayed are a sign of partnership that will connect you to our partners. This site has been created since July 2022. This site was developed by a student at the Surabaya State Electronics Polytechnic.",
                                                textAlign: TextAlign.justify,
                                              ).nunito30s().black(),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 100),
                                      Image.asset(
                                        "assets/images/img_about_us.png",
                                        width: 500,
                                        height: 550,
                                        fit: BoxFit.contain,
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          "assets/images/img_me.png",
                                          width: 500,
                                          height: 550,
                                          fit: BoxFit.contain,
                                        ),
                                        SizedBox(width: 100),
                                        Expanded(
                                          flex: 1,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Welcome to the world of modern Indonesian cuisine.",
                                              ).orelega40s(),
                                              SizedBox(height: 20),
                                              Text(
                                                "My goal is simple: To provide a new experience through history, stories, customs, and recipes typical of the island of Lombok. Someone is able to enjoy cooking in a new way by knowing more about food. There are lots of interesting Lombok Island dishes to try whether for a dinner party at home or eating out. There are many traditional foods that are familiar to domestic tourists but can still provide something different. It's time to try Lombok's special food. Enjoy exploring this website and feel free to leave comments. 'Selamat makan!'",
                                                textAlign: TextAlign.justify,
                                              ).nunito30s().black(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  Padding(
                                    // padding: const EdgeInsets.all(8.0),
                                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Give Us Your Feedback",
                                        ).orelega30s(),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                                    // padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          decoration: new InputDecoration(
                                            hintText: "Berikan Saran Terbaik Anda",
                                            // labelText: "Nama Lengkap",
                                            // icon: Icon(Icons.people),
                                            border: OutlineInputBorder(borderRadius: new BorderRadius.circular(10.0)),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            OnHoverButton(
                                              child: BaseButton(
                                                ontap: () {},
                                                color: OGoodGreen,
                                                height: 50,
                                                width: 300,
                                                text: "Send Feedback",
                                                // icon: Icons.arrow_circle_right_rounded,
                                                iconColor: ONetralWhite,
                                                outlineRadius: 50,
                                                textColor: ONetralWhite,
                                                textSize: 16,
                                                textWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                ],
                              )
                            ],
                          ),
                        ),
                      ]),
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
