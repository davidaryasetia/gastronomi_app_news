import 'dart:convert';

import 'package:gastronomy/model/culture.dart';
import 'package:http/http.dart' as http;
import '../model/restaurant.dart';

class ApiService {
  static const String baseUrl = 'https://admin-gastronomi.projectbase.site/api';

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
}
