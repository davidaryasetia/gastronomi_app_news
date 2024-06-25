import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/page/home/body/home_body_five.dart';
import 'package:gastronomy/page/home/body/home_body_four.dart';
import 'package:gastronomy/page/home/body/home_body_one.dart';
import 'package:gastronomy/page/home/body/home_body_three.dart';
import 'package:gastronomy/page/home/body/home_body_two.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:gastronomy/widget/custom/custom_appbar.dart';
import 'package:gastronomy/widget/custom/custom_chatbot.dart';
import 'package:gastronomy/widget/custom/custom_footbar.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  // const HomePage({super.key});
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var c = Get.put(GlobalController());
  double rate = 0;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.scheduleFrameCallback((timeStamp) async {
      c.selectedIndex.value = 0;
      print(c.selectedIndex.value);
    });
    // Future.delayed(Duration(seconds: 0), () {
    //   // Navigator.push(context, MaterialPageRoute(builder: (_) => Screen2()));
    //   showDialog<String>(
    //     context: context,
    //     builder: (BuildContext context) => AlertDialog(
    //       // contentPadding: EdgeInsets.symmetric(horizontal: 200),
    //       actionsAlignment: MainAxisAlignment.center,
    //       title: Center(child: Text('How Likely are you to recommend this product to a friend ?')),
    //       actions: <Widget>[
    //         Center(
    //           child: RatingBar.builder(
    //             initialRating: -1,
    //             itemCount: 10,
    //             itemBuilder: (context, index) {
    //               switch (index) {
    //                 case 0:
    //                   return Icon(
    //                     Icons.sentiment_very_dissatisfied_sharp,
    //                     color: Colors.red,
    //                   );
    //                 case 1:
    //                   return Icon(
    //                     Icons.sentiment_very_dissatisfied,
    //                     color: Color.fromARGB(255, 246, 61, 48),
    //                   );
    //                 case 2:
    //                   return Icon(
    //                     Icons.sentiment_dissatisfied_sharp,
    //                     color: Colors.redAccent,
    //                   );
    //                 case 3:
    //                   return Icon(
    //                     Icons.sentiment_dissatisfied,
    //                     color: Color.fromARGB(255, 253, 136, 89),
    //                   );
    //                 case 4:
    //                   return Icon(
    //                     Icons.sentiment_neutral_outlined,
    //                     color: Color.fromARGB(255, 255, 181, 7),
    //                   );
    //                 case 5:
    //                   return Icon(
    //                     Icons.sentiment_neutral,
    //                     color: Colors.amber,
    //                   );
    //                 case 6:
    //                   return Icon(
    //                     Icons.sentiment_satisfied,
    //                     color: Color.fromARGB(255, 169, 195, 74),
    //                   );

    //                 case 7:
    //                   return Icon(
    //                     Icons.sentiment_satisfied_outlined,
    //                     color: Colors.lightGreen,
    //                   );
    //                 case 8:
    //                   return Icon(
    //                     Icons.sentiment_very_satisfied,
    //                     color: Colors.green,
    //                   );
    //                 case 9:
    //                   return Icon(
    //                     Icons.sentiment_very_satisfied_rounded,
    //                     color: Colors.green,
    //                   );
    //                 default:
    //                   return Container();
    //               }
    //             },
    //             onRatingUpdate: (rating) {
    //               setState(() {
    //                 print(rating);
    //               });
    //             },
    //           ),
    //         ),
    //         const SizedBox(
    //           height: 30,
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 50.0),
    //           child: Row(
    //             children: [
    //               Expanded(
    //                 flex: 1,
    //                 child: BaseButton(
    //                   ontap: () => Navigator.pop(context, 'Cancel'),
    //                   text: "Cancel",
    //                   color: Colors.red,
    //                   textColor: ONetralWhite,
    //                   outlineRadius: 10,
    //                   outlineColor: OPrimaryColor,
    //                 ),
    //               ),
    //               Expanded(
    //                 flex: 1,
    //                 child: BaseButton(
    //                   outlineRadius: 10,
    //                   ontap: () {
    //                     // c.clearChace();
    //                     // Get.offAll(LoginPage());
    //                   },
    //                   text: "Ok",
    //                   color: Colors.white,
    //                   textColor: Colors.red,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         )
    //         // TextButton(
    //         //   onPressed: () => Navigator.pop(context, 'Cancel'),
    //         //   child: const Text('Cancel'),
    //         // ),
    //         // TextButton(
    //         //   onPressed: () {
    //         //     // c.clearChace();
    //         //     // Get.offAll(LoginPage());
    //         //   },
    //         //   child: const Text('OK'),
    //         // ),
    //       ],
    //     ),
    //   );
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(),
        body: Stack(children: [
          ListView(children: [
            HomeBodyOne(),
            Divider(),
            HomeBodyTwo(),
            Divider(),
            HomeBodyThree(),
            Divider(),
            HomeBodyFour(),
            Divider(),
            HomeBodyFive(),
            Divider(),
            FootBar(),
          ]),
          CustomChatbot(),
        ])
        // HomeBody(),
        );
  }
}
