import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/colors.dart';
// add section

class RestoBodyThree extends StatefulWidget {
  const RestoBodyThree({super.key});

  @override
  State<RestoBodyThree> createState() => _RestoBodyThreeState();
}

class _RestoBodyThreeState extends State<RestoBodyThree> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(viewportFraction: 1, keepPage: true);
    CarouselController carouselController = CarouselController();
    int currentIndex = 0;

    // List<String> resto = ['assets/images/brochure1.png', 'assets/images/brochure2.png', 'assets/images/brochure3.png'];
    List<String> resto = ['assets/images/img_resto1.jpg', 'assets/images/img_resto2.jpg', 'assets/images/img_resto3.jpg', 'assets/images/img_resto4.jpg'];

    return Column(
      children: [
        SizedBox(height: Get.height * 0.051),
        Text("Lombok Famous Restaurant").orelega75m(),
        SizedBox(height: 30),
        Stack(children: [
          SizedBox(
            height: 705,
            width: Get.width,
            child: CarouselSlider.builder(
              itemCount: resto.length,
              carouselController: carouselController,
              options: CarouselOptions(
                // height: 803,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 1,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
              itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => SizedBox(
                child: Column(
                  children: [
                    SizedBox(
                      height: 1,
                    ),
                    Container(
                      height: 700,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(color: Color(0x54000000), spreadRadius: 1, blurRadius: 5, offset: Offset(0.0, 1.0)),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          resto[itemIndex],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 705,
            child: Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
                OnHoverButton(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(1000))),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        // Use the controller to change the current page
                        carouselController.previousPage();
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 705,
            child: Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OnHoverButton(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(1000))),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              // Use the controller to change the current page
                              carouselController.nextPage();
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      height: isSelected ? 100 : 80,
      width: isSelected ? 100 : 80,
      decoration: BoxDecoration(shape: BoxShape.circle, color: isSelected ? Colors.black : Colors.grey),
    );
  }
}
