import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/effects.dart';
import 'package:flutter_animate/extensions/num_duration_extensions.dart';
import 'package:gastronomy/page/gastronomy/gastronomy_page.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../../utils/colors.dart';

class CultureBodyThree extends StatelessWidget {
  const CultureBodyThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final _controller = YoutubePlayerController.fromVideoId(
      videoId: 'CkGDLugd3uk',
      autoPlay: false,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );
    // List<String> resto = ['assets/images/brochure1.png', 'assets/images/brochure2.png', 'assets/images/brochure3.png'];
    List<String> resto = ['assets/images/img_resto1.jpg', 'assets/images/img_resto2.jpg', 'assets/images/img_resto3.jpg', 'assets/images/img_resto4.jpg'];

    return Column(
      children: [
        SizedBox(
          height: 80,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 220),
          child: ClipRRect(
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
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(children: [
        Container(
          height: 272.35,
          width: 327.33,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset("assets/images/ic_beleq.png"),
          ),
        ),
        Container(
          height: 272.35,
          width: 327.33,
          padding: EdgeInsets.only(left: 20, bottom: 20),
          color: Colors.black.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Gendang Beleq").nunito20b().white(),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(color: OGoodGreen, shape: BoxShape.circle),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 9,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      height: 65.97,
                      width: 287.58,
                      child: Text(
                        "Gendang Beleq adalah alat musik tradisional yang dimainkan secara berkelompok. ndonesia.",
                        maxLines: 3,
                      ).nunito15s().white()),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
