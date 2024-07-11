import 'package:flutter/material.dart';
import 'package:gastronomy/model/village.dart';
import 'package:gastronomy/page/tourist_village/detailpage/detail_tourist_village_page.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:get/get.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';

class TouristBodyListPage extends StatelessWidget {
  final Village villages;

  const TouristBodyListPage({super.key, required this.villages});

  @override
  Widget build(BuildContext context) {
    return OnHoverButton(
      child: GestureDetector(
        onTap: () {
          Get.to(DetailTouristVillagePage(
            villagesId: villages.villageId,
          ));
        },
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Stack(
              children: [
                Container(
                  width: 314.57,
                  height: 200,
                  child: FittedBox(
                    child: Image.network(
                        'https://admin-gastronomi.projectbase.site' +
                            villages.villagePhotos[0].photoPath),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 314.57,
                  height: 200,
                  color: Colors.black.withOpacity(0.3),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(villages.nameVillage).nunito15b().white(),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          villages.mandatoryEquipment,
                          maxLines: 2,
                        ).nunito10s().white(),
                      ]),
                )
              ],
            )),
      ),
    );
  }
}
