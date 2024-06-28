// lib/models/restaurant.dart

import 'dart:convert';

class RestaurantData {
  RestaurantData({
    required this.data,
  });

  List<Restaurant> data;

  factory RestaurantData.fromJson(String str) =>
      RestaurantData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RestaurantData.fromMap(Map<String, dynamic> json) => RestaurantData(
        data: List<Restaurant>.from(
            json["data"].map((x) => Restaurant.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Restaurant {
  Restaurant({
    required this.restaurantId,
    required this.nameRestaurant,
    required this.description,
    required this.listFood,
    required this.listDrink,
    required this.address,
    required this.openAt,
    required this.closeAt,
    required this.restaurantPhotos,
  });

  int restaurantId;
  String nameRestaurant;
  String description;
  String listFood;
  String listDrink;
  String address;
  String openAt;
  String closeAt;
  List<RestaurantPhoto> restaurantPhotos;

  factory Restaurant.fromJson(String str) =>
      Restaurant.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Restaurant.fromMap(Map<String, dynamic> json) => Restaurant(
        restaurantId: json["restaurant_id"],
        nameRestaurant: json["name_restaurant"],
        description: json["description"],
        listFood: json["list_food"],
        listDrink: json["list_drink"],
        address: json["address"],
        openAt: json["open_at"],
        closeAt: json["close_at"],
        restaurantPhotos: List<RestaurantPhoto>.from(
            json["restaurant_photos"].map((x) => RestaurantPhoto.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "restaurant_id": restaurantId,
        "name_restaurant": nameRestaurant,
        "description": description,
        "list_food": listFood,
        "list_drink": listDrink,
        "address": address,
        "open_at": openAt,
        "close_at": closeAt,
        "restaurant_photos":
            List<dynamic>.from(restaurantPhotos.map((x) => x.toMap())),
      };
}

class RestaurantPhoto {
  RestaurantPhoto({
    required this.restaurantPhotoId,
    required this.photoPath,
  });

  int restaurantPhotoId;
  String photoPath;

  factory RestaurantPhoto.fromJson(String str) =>
      RestaurantPhoto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RestaurantPhoto.fromMap(Map<String, dynamic> json) => RestaurantPhoto(
        restaurantPhotoId: json["restaurant_photo_id"],
        photoPath: json["photo_path"],
      );

  Map<String, dynamic> toMap() => {
        "restaurant_photo_id": restaurantPhotoId,
        "photo_path": photoPath,
      };
}
