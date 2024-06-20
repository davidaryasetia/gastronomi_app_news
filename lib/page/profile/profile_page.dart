import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/auth/login/login_page.dart';
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

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                                    height: 380,
                                    child: FittedBox(
                                      child: Image.asset('assets/images/img_bg_detail_page.png'),
                                      fit: BoxFit.fill,
                                    )),
                                Container(
                                  width: Get.width,
                                  height: 370,
                                  color: Colors.black.withOpacity(0.6),
                                  child: Center(
                                    child: Container(
                                      width: 957,
                                      height: 131,
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text: 'My',
                                          style: GoogleFonts.orelegaOne(fontSize: 60, fontWeight: FontWeight.w400, color: ONetralWhite),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: ' Profile',
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
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 80.0),
                                    child: Container(
                                      height: 450,
                                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color.fromARGB(255, 198, 198, 198)),
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: const Offset(
                                              1.0,
                                              1.0,
                                            ),
                                            blurRadius: 1.0,
                                            spreadRadius: 1.0,
                                          ), //BoxSha
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  ClipRRect(
                                                    borderRadius: const BorderRadius.all(Radius.circular(1000)),
                                                    child: SizedBox(
                                                      width: 250,
                                                      height: 250,
                                                      child: FittedBox(
                                                          fit: BoxFit.cover,
                                                          child: FadeInImage(
                                                            image: AssetImage("assets/images/ic_profile.jpg"),
                                                            placeholder: const AssetImage("assets/images/ic_profile.jpg"),
                                                            imageErrorBuilder: (context, error, stackTrace) {
                                                              return Image.asset('assets/images/ic_profile.jpg', fit: BoxFit.fitWidth);
                                                            },
                                                            fit: BoxFit.fitWidth,
                                                          )),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(
                                                            Icons.face_sharp,
                                                            size: 20,
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            "Username",
                                                          ).orelega20s(),
                                                        ],
                                                      ),
                                                      Text(
                                                        "Yowanda",
                                                      ).nunito20s(),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.email, size: 20),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            "Email",
                                                          ).orelega20s(),
                                                        ],
                                                      ),
                                                      Text(
                                                        "byayoan@gmail.com",
                                                      ).nunito20s(),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.sensor_occupied, size: 20),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            "Occupation",
                                                          ).orelega20s(),
                                                        ],
                                                      ),
                                                      Text(
                                                        "Student",
                                                      ).nunito20s(),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Icon(Icons.location_on, size: 20),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            "Address",
                                                          ).orelega20s(),
                                                        ],
                                                      ),
                                                      Text(
                                                        "Jl. Kendung Jaya VI No. 65",
                                                      ).nunito20s(),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              GestureDetector(
                                                  onTap: () {
                                                    c.removeToken();
                                                    Get.to(LoginPage());
                                                  },
                                                  child: Icon(
                                                    Icons.logout,
                                                    color: Colors.red,
                                                  ))
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Icon(Icons.info),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text("About me").nunito15b().black(),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  height: 1,
                                                  decoration: BoxDecoration(color: Colors.grey),
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 35,
                                              ),
                                              Expanded(flex: 1, child: Text("I am a flutter mobile developer. Saya telah bekerja sekitar 1.5 tahun. Saya telah menyelesaikan beberapa project independent terkait kampus dan terkait magang di beberapa perusahaan. Saya tertarik dengan Flutter developer karena banyak kelebihan, fleksibilitas dan karena termasuk sebagai bahasa pemrograman terbaru yang banyak digunakan di kalangan startup.").nunito20s().black())
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 50,
                              ),
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
