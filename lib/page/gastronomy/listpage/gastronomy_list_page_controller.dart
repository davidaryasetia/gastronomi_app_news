import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gastronomy/controller/global_controller.dart';
import 'package:gastronomy/model/food_model.dart';
import 'package:get/get.dart' hide Response, FormData, MultipartFile;

class GastronomyListPageController extends GetxController {
  var c = Get.put(GlobalController());
  final Dio dio = Dio();
  final foods = <Food>[].obs;
  final foodsLoading = false.obs;

  getAllFoods(BuildContext context) async {
    foodsLoading.value = false;
    foods.value = await getAllFoodData(context);
    if (foods.length != 0) {
      foodsLoading.value = true;
    }
  }

  getAllFoodData(BuildContext context) async {
    try {
      var token = c.getToken();
      print(token);
      final response = await dio.get(
        '${c.url}/foods',
        options: Options(headers: {
          "Authorization": "Bearer $token",
          HttpHeaders.contentTypeHeader: "application/json",
        }),
      );
      print("==========================================");
      print(response.data);
      print("==========================================");
      // var data = response.data as Map<String, dynamic>;

      return Food.listFromJson(response.data);
    } on DioError catch (e) {
      throw Exception(e.toString());
    }
  }
}
