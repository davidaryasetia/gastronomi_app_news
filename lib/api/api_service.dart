import 'dart:convert';

import 'package:gastronomy/model/culture.dart';
import 'package:gastronomy/model/food.dart';
import 'package:gastronomy/model/village.dart';
import 'package:http/http.dart' as http;
import '../model/restaurant.dart';

class ApiService {
  static const String baseUrl = 'https://admin-gastronomi.projectbase.site/api';

  // Restaurant
  static Future<RestaurantData> fetchRestaurants() async {
    final response = await http.get(Uri.parse('$baseUrl/restaurant'), headers: {
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      return RestaurantData.fromJson(response.body);
    } else {
      throw Exception('Failed to load restaurants');
    }
  }

  static Future<RestaurantData> fetchRestaurantById(int id) async {
    final response =
        await http.get(Uri.parse('$baseUrl/restaurant/$id'), headers: {
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      return RestaurantData.fromJson(response.body);
    } else {
      throw Exception('Failed to load restaurants');
    }
  }

  // Culture
  static Future<CultureData> fetchCultures() async {
    final response = await http.get(Uri.parse('$baseUrl/culture'), headers: {
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      return CultureData.fromJson(response.body);
    } else {
      throw Exception('Failed To Load Data Culture');
    }
  }

  static Future<CultureData> fetchCultureById(int id) async {
    final response =
        await http.get(Uri.parse('$baseUrl/culture/$id'), headers: {
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      return CultureData.fromJson(response.body);
    } else {
      throw Exception('Failed to load cultures');
    }
  }

  static Future<FoodData> fetchFoods() async {
    final response = await http.get(Uri.parse('$baseUrl/food'), headers: {
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      return FoodData.fromJson(response.body);
    } else {
      throw Exception('Failed To Load Data Food');
    }
  }

  // Tourist Village Destination
  static Future<VillageData> fetchVillages() async {
    final response = await http.get(Uri.parse('$baseUrl/village'), headers: {
      'Accept': 'application/json',
    });

    if (response.statusCode == 200) {
      return VillageData.fromJson(response.body);
    } else {
      throw Exception('Failed To Load Data Vilage');
    }
  }
}
