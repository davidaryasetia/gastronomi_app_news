import 'package:flutter/material.dart';
import 'package:gastronomy/page/restaurant/restaurant_add/restaurant_new_add_page.dart';
import 'package:gastronomy/page/restaurant/restaurant_detail_page/restaurant_detail_page.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gastronomy/model/restaurant.dart';

class RestaurantBodyListPage extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantBodyListPage({super.key, required this.restaurant});
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30,
        ),
        OnHoverButton(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  Get.to(RestaurantDetailPage(
                    restaurantId: restaurant.restaurantId,
                  ));
                },
                child: Column(
                  children: [
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
                              width: 427,
                              height: 232,
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Image.network(
                                    'https://admin-gastronomi.projectbase.site' +
                                        restaurant
                                            .restaurantPhotos[0].photoPath),
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
                              Text(restaurant.nameRestaurant)
                                  .nunito30b()
                                  .black(),
                              Row(
                                children: [
                                  Image.asset(
                                      "assets/images/ic_location_primary.png"),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(restaurant.address)
                                      .nunito18s()
                                      .primary(),
                                ],
                              ),
                              SizedBox(height: 10),
                              const Text("Deskripsi:").nunito20b().black(),
                              Text(restaurant.description).nunito20s().black(),
                              SizedBox(height: 10),
                              const Text("Menu Makanan:").nunito20b().black(),
                              // Text(restaurant.listFood).nunito20s().black(),
                              // GestureDetector(onTap: () {}, child: const Text("Learn it more...").nunito25s().primary()),
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
        ),
      ],
    );
  }
}
