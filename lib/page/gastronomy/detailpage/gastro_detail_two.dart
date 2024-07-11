import 'package:flutter/material.dart';
import 'package:gastronomy/page/gastronomy/listpage/gastronomy_list_page_controller.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';
import 'package:get/get.dart';

class GastroDetailTwo extends StatelessWidget {
  GastroDetailTwo({super.key, required this.index});
  final int index;
  var l = Get.put(GastronomyListPageController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  width: 427,
                  height: 232,
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
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Traditional Food").nunito20s().primary(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/ic_location_primary.png"),
                          SizedBox(
                            width: 10,
                          ),
                          const Text("Kepulauan Lombok, Nusa Tenggara Barat")
                              .nunito18s()
                              .black(),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(l.foods[index].name).orelega50s().black(),
                  SizedBox(height: 15),
                  Container(
                    child: Text(
                      l.foods[index].description,
                      textAlign: TextAlign.justify,
                    ).nunito20s().black(),
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("History").orelega40s().black(),
          ],
        ),
        SizedBox(height: 29),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image:
                      "http://gapulo.tech${l.foods[index].culturePictures[0].picture}",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image:
                      "http://gapulo.tech${l.foods[index].culturePictures[0].picture}",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image:
                      "http://gapulo.tech${l.foods[index].culturePictures[0].picture}",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image:
                      "http://gapulo.tech${l.foods[index].culturePictures[0].picture}",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
          ],
        ),
        SizedBox(height: 29),
        Text(
          l.foods[index].history,
          textAlign: TextAlign.justify,
        ).nunito20s().black(),
        SizedBox(height: 40),
      ],
    );
  }
}
