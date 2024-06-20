import 'package:flutter/material.dart';
import 'package:gastronomy/page/restaurant/restaurant_add/field_list_makanan.dart';
import 'package:gastronomy/utils/ext_text.dart';
import 'package:gastronomy/widget/form/base_form.dart';
import 'field_list_minuman.dart';

class RestaurantAddBodyPage extends StatelessWidget {
  RestaurantAddBodyPage({super.key});
  final namaController = TextEditingController(text: "");
  final deskripsiController = TextEditingController(text: "");
  final lokasiController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Tambah Data Restaurant ").orelega50s(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text("Tambahkan data restauran yang anda miliki.").nunito30b(),
        Text("Bagikan pengalaman menarik anda terkait rumah makan.").nunito30b(),
        SizedBox(
          height: 100,
        ),
        BaseForm(
          controller: namaController,
          title: "Nama Rumah Makan",
        ),
        BaseForm(
          controller: deskripsiController,
          title: "Deskripsi Rumah Makan",
        ),
        BaseForm(
          controller: lokasiController,
          title: "Lokasi Restaurant",
        ),
        BaseForm(
          controller: deskripsiController,
          title: "Jam Buka",
        ),
        BaseForm(
          controller: deskripsiController,
          title: "Jam Tutup",
        ),
        BaseForm(
          controller: deskripsiController,
          title: "Harga Terendah",
        ),
        BaseForm(
          controller: deskripsiController,
          title: "Harga Tertinggi",
        ),
        Text("List Makanan").nunito30b(),
        RestaurantFoodField(),
        SizedBox(
          height: 20,
        ),
        Text("List Minuman").nunito30b(),
        RestaurantDrinkField(),
        SizedBox(
          height: 20,
        ),

        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Text("Nama Rumah Makan").nunito30b(),
        //     Container(
        //       height: 41,
        //       padding: const EdgeInsets.only(left: 15, bottom: 8),
        //       decoration: BoxDecoration(color: const Color(0xffFFFFFF), borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.grey)),
        //       child: TextField(
        //         controller: _passwordController,
        //         style: const TextStyle(color: Colors.black, fontSize: 25),
        //         decoration: const InputDecoration(
        //           border: InputBorder.none,
        //         ),
        //       ),
        //     ),
        //   ],
        // )
      ],
    );
  }
}
