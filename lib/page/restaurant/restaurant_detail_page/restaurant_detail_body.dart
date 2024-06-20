import 'package:flutter/material.dart';
import 'package:gastronomy/utils/colors.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/animation/on_hover_button.dart';
import 'package:gastronomy/widget/button/button_base.dart';
import 'package:gastronomy/widget/custom/custom_rounded_image.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class RestaurantDetailBody extends StatelessWidget {
  RestaurantDetailBody({super.key});
  final List<String> recipes = <String>['750 gram ayam kampung', '1,5 liter air', '1 buah jeruk nipis', '1 sdt gula pasir', '1 sdt gula pasir', '750 gram ayam kampung', '1 buah jeruk nipis', 'garam secukupnya', '1 sdt gula pasir', '1 buah jeruk nipis', '1 buah jeruk nipis', '1 sdt gula pasir', '1 buah jeruk nipis', '1,5 liter air', '750 gram ayam kampung', 'garam secukupnya'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
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
              width: 50,
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/ic_Address.png"),
                      SizedBox(
                        width: 10,
                      ),
                      const Text("Labuan Mapin, Kec. Alas Bar., Kabupaten Sumbawa, Nusa Tenggara Bar. 84454").nunito18s().primary(),
                    ],
                  ),
                  SizedBox(height: 10),
                  const Text("Restorant Ayam Taliwang").orelega50s().black(),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      text: 'Buka: ',
                      style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w900),
                      children: <TextSpan>[
                        TextSpan(
                          text: '8.00 - 22.00',
                          style: GoogleFonts.nunito(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 35),
                  Container(
                    child: Text(
                      "Tuak manis banyak diproduksi di kawasan Hutan Pusuk, Lombok Barat. Menurut kepercayaan masyarakat, jika tuak manis dikonsumsi secara teratur dapat menyembuhkan beberapa penyakit seperti diabetes, sembelit, kencing batu, sariawan dan juga bisa menetralisir racun dan menjaga kesehatan manusia.",
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
            const Text("Menu Makanan").orelega40s().black(),
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image: "assets/images/img_plecing_kangkung1.png",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
            SizedBox(width: 20),
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image: "assets/images/img_sate_bulayak3.png",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
            SizedBox(width: 20),
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image: "assets/images/img_list_menu.png",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
            SizedBox(width: 20),
            Expanded(
                flex: 1,
                child: CustomRoundedImage(
                  image: "assets/images/img_sate_tanjung2.png",
                  outlineRounded: 10,
                  height: 198,
                  width: Get.width,
                )),
          ],
        ),
        SizedBox(height: 29),
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
                  const Text("Makanan").nunito25eb().black(),
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
                  const Text("Minuman").nunito25eb().black(),
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Lokasi Restaurant").orelega40s().black(),
                SizedBox(height: 10),
                Text(
                  "Desa. Rendut Tutubhada, Nusa Tenggara Timur, Kabupaten/ Kota. Nagekeo, Kecamatan Aesesa",
                  textAlign: TextAlign.justify,
                ).nunito30s().black(),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  // width: Get.width,
                  height: 400,
                  child: FittedBox(
                    child: Image.asset("assets/images/ntb.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        OnHoverButton(
          child: BaseButton(
            ontap: () async {
              const url = 'https://blog.logrocket.com';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
              // Get.to(RestaurantListPage());
            },
            width: Get.width,
            height: 0.05 * Get.height,
            text: "Buka Map",
            textSize: 20,
            color: OGoodGreen,
            outlineRadius: 10.0,
            icon: Icons.arrow_forward_rounded,
            iconColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
