import 'dart:convert';

// Model for FoodData
class FoodData {
  FoodData({
    required this.data,
  });

  List<Food> data;

  // Factory method to create FoodData from JSON string
  factory FoodData.fromJson(String str) => FoodData.fromMap(json.decode(str));

  // Method to convert FoodData to JSON string
  String toJson() => json.encode(toMap());

  // Factory method to create FoodData from Map
  factory FoodData.fromMap(Map<String, dynamic> json) {
    // Check if 'data' is a list or a single object
    if (json['data'] is List) {
      return FoodData(
        data: List<Food>.from(json["data"].map((x) => Food.fromMap(x))),
      );
    } else if (json['data'] is Map) {
      return FoodData(
        data: [Food.fromMap(json['data'])],
      );
    } else {
      throw Exception('Unexpected data format');
    }
  }

  // Method to convert FoodData to Map
  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };

  // Method to get Food by ID
  Food? getFoodById(int id) {
    try {
      return data.firstWhere((food) => food.foodId == id);
    } catch (e) {
      return null; // Return null if no food with the given ID is found
    }
  }
}

// Model for Food
class Food {
  Food({
    required this.foodId,
    required this.name,
    required this.photoPath,
    required this.category,
    required this.description,
    required this.foodHistorical,
    required this.ingredients,
    required this.urlYoutube,
    required this.nutrition,
    required this.address,
    required this.createdAt,
    required this.updatedAt,
    required this.photos,
  });

  int foodId;
  String name;
  String photoPath;
  String category;
  String description;
  String foodHistorical;
  String ingredients;
  String urlYoutube;
  String nutrition;
  String address;
  DateTime createdAt;
  DateTime updatedAt;
  List<FoodPhoto> photos;

  // Factory method to create Food from JSON string
  factory Food.fromJson(String str) => Food.fromMap(json.decode(str));

  // Method to convert Food to JSON string
  String toJson() => json.encode(toMap());

  // Factory method to create Food from Map
  factory Food.fromMap(Map<String, dynamic> json) => Food(
        foodId: json["food_id"],
        name: json["name"],
        photoPath: json["photo_path"],
        category: json["category"],
        description: json["description"],
        foodHistorical: json["food_historical"],
        ingredients: json["ingredients"],
        urlYoutube: json["url_youtube"],
        nutrition: json["nutrition"],
        address: json["address"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        photos: List<FoodPhoto>.from(
            json["photos"].map((x) => FoodPhoto.fromMap(x))),
      );

  // Method to convert Food to Map
  Map<String, dynamic> toMap() => {
        "food_id": foodId,
        "name": name,
        "photo_path": photoPath,
        "category": category,
        "description": description,
        "food_historical": foodHistorical,
        "ingredients": ingredients,
        "url_youtube": urlYoutube,
        "nutrition": nutrition,
        "address": address,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "photos": List<dynamic>.from(photos.map((x) => x.toMap())),
      };
}

// Model for FoodPhoto
class FoodPhoto {
  FoodPhoto({
    required this.foodHistoricalPhotoId,
    required this.photo,
  });

  int foodHistoricalPhotoId;
  String photo;

  // Factory method to create FoodPhoto from JSON string
  factory FoodPhoto.fromJson(String str) => FoodPhoto.fromMap(json.decode(str));

  // Method to convert FoodPhoto to JSON string
  String toJson() => json.encode(toMap());

  // Factory method to create FoodPhoto from Map
  factory FoodPhoto.fromMap(Map<String, dynamic> json) => FoodPhoto(
        foodHistoricalPhotoId: json["food_historical_photo_id"],
        photo: json["photo"],
      );

  // Method to convert FoodPhoto to Map
  Map<String, dynamic> toMap() => {
        "food_historical_photo_id": foodHistoricalPhotoId,
        "photo": photo,
      };
}
