import 'package:flutter/material.dart';
import 'package:gastronomy/page/about_us/about_us_page.dart';
import 'package:gastronomy/page/auth/auth_page.dart';
import 'package:gastronomy/page/culture/culture_page.dart';
import 'package:gastronomy/page/culture/detailpage/culture_detail_page.dart';
import 'package:gastronomy/page/gastrobot/gastrobot_page.dart';
import 'package:gastronomy/page/gastronomy/gastronomy_page.dart';
import 'package:gastronomy/page/home/homepage.dart';
import 'package:gastronomy/page/profile/profile_page.dart';
import 'package:gastronomy/page/tourist_village/detailpage/detail_tourist_village_page.dart';
import 'package:gastronomy/page/tourist_village/mainpage/tourist_body.dart';
import 'package:gastronomy/page/tourist_village/tourist_village_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gastronomy Pulau Lombok',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/second', page: () => const GastrobotPage()),
      ],
    );
  }
}
