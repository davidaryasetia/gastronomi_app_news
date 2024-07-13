import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';
import 'package:get/get.dart';

class GastroDetailSix extends StatelessWidget {
  GastroDetailSix({super.key});
  final List<String> restaurants = <String>[
    'Restaurant Plecik Kangkung',
    'Restaurant Ayam Taliwang',
    'Restaurant Sate Bulayak'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Nutrition").orelega40s().black(),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: CustomRoundedImage(
                image: "assets/images/img_nutrition.png",
                outlineRounded: 20,
                height: 280,
                width: 280,
              ),
            ),
            SizedBox(width: 35),
            Expanded(
                flex: 2,
                child: Text(
                  'Kandungan gizi "Ayam taliwang, masakan" di bawah ini berdasarkan data Kemenkes RI, Tabel Komposisi Pangan Indonesia (TKPI). Jenis pangan: Olahan, Kode Baru: FP034       Kode Lama: -, Kelompok: Daging, Nama Inggris: Taliwang chicken, cooking. Komposisi (kandungan) gizi per 100 gram "ayam taliwang, masakan", dengan BDD = 100 % (Berat Dapat Dimakan), seperti berikut ini (urut abjad/huruf). Silakan klik gizi/vitamin/mineral yang berwarna biru untuk melihat manfaatnya serta bahan makanan yang mengandung gizi tersebut. Abu (Ash):1,5 gramAir (Water):57,5 gram, Besi (Fe), Ferrum, Iron:2,0 miligram, β-Karoten (Carotenes):-, Energi (Energy):264 Kalori, Fosfor (P), Phosphorus:164 miligram, Kalium (K), Potassium:408,0 miligram, Kalsium (Ca), Calcium:94 miligram, Karbohidrat (CHO):2,7 gram, Karoten total (Re):-, Lemak (Fat):20,1 gram, Natrium (Na), Sodium:507 miligram, Niasin, C6H5NO2, Niacin:-. Protein:18,2 gram, Retinol (vit A), C20H30O:1.067 mikrogram, Riboflavin (vitamin B2):-, Seng (Zn), Zinc:12,3 miligram, Serat (Fiber):-, Tembaga (Cu), Copper:0,40 miligram, Tiamina (vitamin B1):-, Vitamin C:-',
                  textAlign: TextAlign.justify,
                ).nunito20s())
          ],
        ),
        SizedBox(height: 80),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     const Text("Restaurant").orelega40s().black(),
        //   ],
        // ),
        // SizedBox(height:   20),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     OnHoverButton(
        //       child: BaseButton(
        //         ontap: () {
        //           Get.to(RestaurantNewAdd());
        //         },
        //         color: OPrimaryColor,
        //         text: "Tambahkan data Restaurant Yang Kamu Tau !",
        //         textSize: 20,
        //         textWeight: FontWeight.w900,
        //         // textStyle: TextStyle(texS: 25, fontWeight: FontWeight.w900),
        //         // GoogleFonts.nunito(fontSize: 40, fontWeight: FontWeight.w900),
        //         textColor: Colors.white,
        //         outlineRadius: 20,
        //         width: 570,
        //         height: 75,
        //       ),
        //     )
        //   ],
        // ),
        // SizedBox(height:   30),
        // Container(
        //     width: Get.width,
        //     height:   750,
        //     child: ListView.builder(
        //       // padding: const EdgeInsets.all(8),
        //       itemCount: restaurants.length,
        //       itemBuilder: (BuildContext context, int index) {
        //         return Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             ListItem()
        //             // Text('${index + 1}. ${directions[index]}').nunito20s().black(),
        //             // SizedBox(height:   2),
        //           ],
        //         );
        //       },
        //     ))
        // Container(
        //   height:  750,
        //   width: Get.width,
        //   child: Column(
        //     children: [
        //       ListItem()
        //     ],
        //   ),
        // )
      ],
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHoverButton(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Get.to(RestaurantDetailPage());
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 27),
              width: Get.width,
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          width: 259,
                          height: 180,
                          child: FittedBox(
                            child: Image.asset(
                                "assets/images/img_recipe_ayam.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Restaurant Pelecik Kangkung")
                                    .nunito25eb()
                                    .black(),
                                Image.asset("assets/images/9star.png"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/ic_location_primary.png"),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    const Text(
                                            "Labuan Mapin, Kec. Alas Bar., Kabupaten Sumbawa, Nusa Tenggara Bar. 84454")
                                        .nunito18s()
                                        .primary(),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 13),
                            const Text(
                              "Deskripsi:",
                            ).nunito20b().black(),
                            const Text(
                              "Restauran tempat makan Plecik kangkung khas NTT. daerah Labuan Mapin. ",
                            ).nunito20m().black(),
                            SizedBox(height: 10),
                            const Text(
                              "Menu makanan:",
                            ).nunito20b().black(),
                            const Text(
                              "1. Plecik kangkung 2. Ayam Taliwang",
                            ).nunito20m().black(),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 28),
        ],
      ),
    );
  }
}
