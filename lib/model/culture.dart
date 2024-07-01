import 'dart:convert';

// Kelas utama untuk CultureData
class CultureData {
  CultureData({
    required this.data,
  });

  List<Culture> data;

  factory CultureData.fromJson(String str) =>
      CultureData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  // Fungsi factory untuk membuat instance dari Map
  factory CultureData.fromMap(Map<String, dynamic> json) {
    // Memeriksa apakah 'data' adalah daftar (List) atau objek tunggal (Map)
    if (json['data'] is List) {
      return CultureData(
        data: List<Culture>.from(json["data"].map((x) => Culture.fromMap(x))),
      );
    } else if (json['data'] is Map) {
      return CultureData(
        data: [Culture.fromMap(json['data'])],
      );
    } else {
      throw Exception('Unexpected data format');
    }
  }

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

// Kelas untuk masing-masing budaya (Culture)
class Culture {
  Culture({
    required this.cultureId,
    required this.nameCulture,
    required this.description,
    required this.urlYoutube,
    required this.photoPath,
    required this.createdAt,
    required this.updatedAt,
  });

  int cultureId;
  String nameCulture;
  String description;
  String urlYoutube;
  String photoPath;
  DateTime createdAt;
  DateTime updatedAt;

  factory Culture.fromJson(String str) => Culture.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Culture.fromMap(Map<String, dynamic> json) => Culture(
        cultureId: json["culture_id"],
        nameCulture: json["name_culture"],
        description: json["description"],
        urlYoutube: json["url_youtube"],
        photoPath: json["photo_path"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "culture_id": cultureId,
        "name_culture": nameCulture,
        "description": description,
        "url_youtube": urlYoutube,
        "photo_path": photoPath,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
