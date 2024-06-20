import 'dart:convert';

// Food doctorFromJson(String str) => Food.fromJson(json.decode(str));
// String doctorToJson(Food data) => json.encode(data.toJson());

class Food {
  Food({
    required this.historyPictures,
    required this.howToMakes,
    required this.howToMakePictures,
    required this.nutritions,
    required this.id,
    required this.name,
    required this.link,
    required this.description,
    required this.history,
    required this.ingredients,
    required this.culturePictures,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });
  late final List<String> historyPictures;
  late final List<String> howToMakes;
  late final List<String> howToMakePictures;
  late final List<String> nutritions;
  late final String id;
  late final String name;
  late final String link;
  late final String description;
  late final String history;
  late final List<Ingredients> ingredients;
  late final List<CulturePictures> culturePictures;
  late final String createdAt;
  late final String updatedAt;
  late final int v;

  Food.fromJson(Map<String, dynamic> json) {
    historyPictures = List.castFrom<dynamic, String>(json['historyPictures']) ?? [];
    howToMakes = List.castFrom<dynamic, String>(json['howToMakes']) ?? [];
    howToMakePictures = List.castFrom<dynamic, String>(json['howToMakePictures']) ?? [];
    nutritions = List.castFrom<dynamic, String>(json['nutritions']) ?? [];
    id = json['_id'] ?? "";
    name = json['name'] ?? "";
    link = json['link'] ?? "";
    description = json['description'];
    history = json['history'] ?? "";
    ingredients = List.from(json['ingredients']).map((e) => Ingredients.fromJson(e)).toList() ?? [];
    culturePictures = List.from(json['culturePictures']).map((e) => CulturePictures.fromJson(e)).toList() ?? [];
    createdAt = json['createdAt'] ?? "";
    updatedAt = json['updatedAt'] ?? "";
    v = json['__v'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['historyPictures'] = historyPictures;
    _data['howToMakes'] = howToMakes;
    _data['howToMakePictures'] = howToMakePictures;
    _data['nutritions'] = nutritions;
    _data['_id'] = id;
    _data['name'] = name;
    _data['link'] = link;
    _data['description'] = description;
    _data['history'] = history;
    _data['ingredients'] = ingredients.map((e) => e.toJson()).toList();
    _data['culturePictures'] = culturePictures.map((e) => e.toJson()).toList();
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['__v'] = v;
    return _data;
  }

  static List<Food> listFromJson(List<dynamic> list) => List<Food>.from(list.map((x) => Food.fromJson(x)));
}

class Ingredients {
  Ingredients({
    required this.items,
    required this.id,
    required this.name,
  });
  late final List<String> items;
  late final String id;
  late final String name;

  Ingredients.fromJson(Map<String, dynamic> json) {
    items = List.castFrom<dynamic, String>(json['items']) ?? [];
    id = json['_id'] ?? "";
    name = json['name'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['items'] = items;
    _data['_id'] = id;
    _data['name'] = name;
    return _data;
  }
}

class CulturePictures {
  CulturePictures({
    required this.id,
    required this.cultureId,
    required this.picture,
  });
  late final String id;
  late final String cultureId;
  late final String picture;

  CulturePictures.fromJson(Map<String, dynamic> json) {
    id = json['_id'] ?? "";
    cultureId = json['cultureId'] ?? "";
    picture = json['picture'] ?? "";
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['cultureId'] = cultureId;
    _data['picture'] = picture;
    return _data;
  }
}
