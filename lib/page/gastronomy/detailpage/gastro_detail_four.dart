import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class GastroDetailFour extends StatelessWidget {
  GastroDetailFour({super.key});
  final List<String> recipes = <String>[
    '750 gram ayam kampung',
    '1,5 liter air',
    '1 buah jeruk nipis',
    '1 sdt gula pasir',
    '1 sdt gula pasir',
    '750 gram ayam kampung',
    '1 buah jeruk nipis',
    'garam secukupnya',
    '1 sdt gula pasir',
    '1 buah jeruk nipis',
    '1 buah jeruk nipis',
    '1 sdt gula pasir',
    '1 buah jeruk nipis',
    '1,5 liter air',
    '750 gram ayam kampung',
    'garam secukupnya'
  ];
  final _controller = YoutubePlayerController.fromVideoId(
    videoId: 'Bj2kAAKt_cE',
    autoPlay: false,
    params: const YoutubePlayerParams(showFullscreenButton: true),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Let’s Make Ayam Taliwang").orelega40s().black(),
          ],
        ),
        SizedBox(height: 25),
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: YoutubePlayerScaffold(
            controller: _controller,
            aspectRatio: 16 / 5,
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
        SizedBox(height: 25),
        // Row(
        //   children: [
        //     Expanded(
        //       child: Column(
        //         children: [
        //           // ClipRRect(
        //           //   borderRadius: BorderRadius.all(Radius.circular(20)),
        //           //   child: Container(
        //           //     // width:   230,
        //           //     height:   342.5,
        //           //     child: FittedBox(
        //           //       child: Image.asset("assets/images/img_recipe_ayam.png"),
        //           //       fit: BoxFit.cover,
        //           //     ),
        //           //   ),
        //           // ),
        //           RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height:   125),
        //           SizedBox(height:   20.5),
        //           RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height:   125),
        //         ],
        //       ),
        //     ),
        //     SizedBox(width:   20),
        //     Expanded(flex: 1, child: RoundedImage(image: "assets/images/img_recipe_ayam.png", outlineRounded: 20, height:   250, width:   590)),
        //   ],
        // ),
        // SizedBox(height:   40),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Main Ingredients").nunito25eb().black(),
                  SizedBox(height: 10),
                  Container(
                      width: Get.width,
                      height: 500,
                      child: ListView.builder(
                        // padding: const EdgeInsets.all(8),
                        itemCount: recipes.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text('${recipes[index]}').nunito20s().black();
                        },
                      ))
                ],
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 1,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Fine Seasoning Ingredients").nunito25eb().black(),
                  SizedBox(height: 10),
                  Container(
                      width: Get.width,
                      height: 500,
                      child: ListView.builder(
                        // padding: const EdgeInsets.all(8),
                        itemCount: recipes.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Text('${recipes[index]}').nunito20s().black();
                        },
                      ))
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
