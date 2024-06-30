import 'package:flutter/material.dart';
import 'package:gastronomy/model/food.dart';
import 'package:gastronomy/page/gastronomy/detailpage/gastronomy_detail_page.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:get/get.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';

class GastronomyBodyListPage extends StatelessWidget {
  final Food food;

  const GastronomyBodyListPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 80),
          child: GestureDetector(
            onTap: () {
              // Get.to(const GastronomyDetailPage(
              //   index: widget.index,
              // ));
            },
            child: OnHoverButton(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Container(
                            width: 427,
                            height: 232,
                            child: FittedBox(
                              child: Image.network(
                                  'https://admin-gastronomi.projectbase.site' +
                                      food.photoPath),
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(food.category).nunito20s().black(),
                                Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/ic_location_primary.png"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(food.address).nunito18s().black(),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(food.name).nunito30b().black(),
                            SizedBox(height: 15),
                            Text(
                              food.description,
                              maxLines: 4,
                            ).nunito20s().black(),
                            SizedBox(height: 30),
                            GestureDetector(
                                onTap: () {},
                                child: const Text("Learn it more...")
                                    .nunito25s()
                                    .primary()),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                  // Divider(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
