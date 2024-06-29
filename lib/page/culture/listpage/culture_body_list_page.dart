import 'package:flutter/material.dart';
import 'package:gastronomy/model/culture.dart';
import 'package:gastronomy/page/culture/detailpage/culture_detail_page.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:get/get.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';

class CultureBodyListPage extends StatelessWidget {
  final Culture culture;

  const CultureBodyListPage({super.key, required this.culture});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 80),
          child: GestureDetector(
            onTap: () {
              Get.to(CultureDetailPage());
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
                            width: 314.57,
                            height: 200,
                            child: FittedBox(
                              child: Image.network(
                                  'https://admin-gastronomi.projectbase.site' +
                                      culture.photoPath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      // Expanded(
                      //   flex: 1,
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.all(Radius.circular(20)),
                      //     child: Container(
                      //       width: 314.57,
                      //       height: 200,
                      //       child: FittedBox(
                      //         child: Image.asset(
                      //             "assets/images/img_recipe_ayam.png"),
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(culture.nameCulture).nunito30b().black(),
                              ],
                            ),
                            SizedBox(height: 15),
                            Text(
                              culture.description,
                              maxLines: 6,
                            ).nunito20s().black(),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {},
                                    child: const Text("See more")
                                        .nunito25s()
                                        .primary()),
                              ],
                            ),
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
