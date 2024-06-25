import 'package:flutter/material.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';
import 'package:get/get.dart';

class GastroDetailFive extends StatelessWidget {
  GastroDetailFive({super.key});
  final List<String> directions = <String>[
    'Siapkan bahan untuk membuat ayam taliwang.',
    'Tambahkan air sedikit.',
    'Setelah itu, tunggu sampai airnya menyusut dan daging ayam jadi empuk. Kecilkan api kompor, agar tidak terlalu gosong.',
    'Panggang potongan ayam yang telah diolesi mentega ± 10 menit untuk kedua sisinya.',
    'Oleskan dengan sedikit mentega atau minyak.',
    'Bakar ayam dengan grill pan atau teflon. ',
    'Jika Sudah segera angkat dan letakkan ke dalam wadah. ',
    'Setelah itu, tunggu sampai airnya menyusut dan daging ayam jadi empuk. Kecilkan api kompor, agar tidak terlalu gosong.',
    'Bumbui dengan gula dan garam secukupnya.',
    'Tambahkan air sedikit.',
    'Masak daging ayam dengan bumbu yang telah dimarinasi.',
    'Tumis bumbu yang sudah halus hingga mengeluarkan aroma harum.',
    'Siyapkan minyak goreng.',
    'Haluskan dan tumis semua bumbu.',
    'Marinasi daging ayam dengan jeruk nipis.',
    'Cuci daging ayam hingga bersih, lalu tiriskan hingga kering.'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  CustomRoundedImage(
                    image: "assets/images/img_recipe_ayam.png",
                    outlineRounded: 20,
                    height: 280,
                  ),
                  SizedBox(height: 20.5),
                  CustomRoundedImage(
                      image: "assets/images/img_recipe_ayam.png",
                      outlineRounded: 20,
                      height: 280),
                ],
              ),
            ),
            SizedBox(width: 35),
            Expanded(
              flex: 2,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Directions:").nunito25eb().black(),
                  SizedBox(height: 10),
                  Container(
                      width: Get.width,
                      height: 560,
                      child: ListView.builder(
                        // padding: const EdgeInsets.all(8),
                        itemCount: directions.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${index + 1}. ${directions[index]}')
                                  .nunito20s()
                                  .black(),
                              SizedBox(height: 2),
                            ],
                          );
                        },
                      ))
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: CustomRoundedImage(
                image: "assets/images/img_recipe_ayam.png",
                outlineRounded: 20,
                height: 280,
              ),
            ),
            SizedBox(width: 27),
            Expanded(
              flex: 1,
              child: CustomRoundedImage(
                image: "assets/images/img_recipe_ayam.png",
                outlineRounded: 20,
                height: 280,
              ),
            ),
            SizedBox(width: 27),
            Expanded(
              flex: 1,
              child: CustomRoundedImage(
                image: "assets/images/img_recipe_ayam.png",
                outlineRounded: 20,
                height: 280,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
