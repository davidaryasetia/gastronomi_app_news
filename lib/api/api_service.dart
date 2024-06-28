import 'package:http/http.dart' as http;
import '../model/restaurant.dart';

class ApiService {
  static const String url = 'http://127.0.0.1:8000/api/restaurant';

  static Future<RestaurantData> fetchRestaurants() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return RestaurantData.fromJson(response.body);
    } else {
      throw Exception('Failed to load restaurants');
    }
  }
}
