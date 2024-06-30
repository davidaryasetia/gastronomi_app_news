import 'dart:convert';

// Model for VillageData
class VillageData {
  VillageData({
    required this.data,
  });

  List<Village> data;

  // Factory method to create VillageData from JSON string
  factory VillageData.fromJson(String str) =>
      VillageData.fromMap(json.decode(str));

  // Method to convert VillageData to JSON string
  String toJson() => json.encode(toMap());

  // Factory method to create VillageData from Map
  factory VillageData.fromMap(Map<String, dynamic> json) => VillageData(
        data: List<Village>.from(json["data"].map((x) => Village.fromMap(x))),
      );

  // Method to convert VillageData to Map
  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

// Model for Village
class Village {
  Village({
    required this.villageId,
    required this.nameVillage,
    required this.openAt,
    required this.closeAt,
    required this.address,
    required this.facility,
    required this.mandatoryEquipment,
    required this.contact,
    required this.urlWebsite,
    required this.urlFacebook,
    required this.urlInstagram,
    required this.urlTwitter,
    required this.createdAt,
    required this.updatedAt,
    required this.villagePhotos,
  });

  int villageId;
  String nameVillage;
  String openAt;
  String closeAt;
  String address;
  String facility;
  String mandatoryEquipment;
  String contact;
  String urlWebsite;
  String urlFacebook;
  String? urlInstagram;
  String urlTwitter;
  DateTime createdAt;
  DateTime updatedAt;
  List<VillagePhoto> villagePhotos;

  // Factory method to create Village from JSON string
  factory Village.fromJson(String str) => Village.fromMap(json.decode(str));

  // Method to convert Village to JSON string
  String toJson() => json.encode(toMap());

  // Factory method to create Village from Map
  factory Village.fromMap(Map<String, dynamic> json) => Village(
        villageId: json["village_id"],
        nameVillage: json["name_village"],
        openAt: json["open_at"],
        closeAt: json["close_at"],
        address: json["address"],
        facility: json["fasility"],
        mandatoryEquipment: json["mandatory_equipment"],
        contact: json["contact"],
        urlWebsite: json["url_website"],
        urlFacebook: json["url_facebook"],
        urlInstagram: json["url_instagram"],
        urlTwitter: json["url_twitter"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        villagePhotos: List<VillagePhoto>.from(
            json["village_photos"].map((x) => VillagePhoto.fromMap(x))),
      );

  // Method to convert Village to Map
  Map<String, dynamic> toMap() => {
        "village_id": villageId,
        "name_village": nameVillage,
        "open_at": openAt,
        "close_at": closeAt,
        "address": address,
        "fasility": facility,
        "mandatory_equipment": mandatoryEquipment,
        "contact": contact,
        "url_website": urlWebsite,
        "url_facebook": urlFacebook,
        "url_instagram": urlInstagram,
        "url_twitter": urlTwitter,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "village_photos":
            List<dynamic>.from(villagePhotos.map((x) => x.toMap())),
      };
}

// Model for VillagePhoto
class VillagePhoto {
  VillagePhoto({
    required this.villagePhotoId,
    required this.photoPath,
  });

  int villagePhotoId;
  String photoPath;

  // Factory method to create VillagePhoto from JSON string
  factory VillagePhoto.fromJson(String str) =>
      VillagePhoto.fromMap(json.decode(str));

  // Method to convert VillagePhoto to JSON string
  String toJson() => json.encode(toMap());

  // Factory method to create VillagePhoto from Map
  factory VillagePhoto.fromMap(Map<String, dynamic> json) => VillagePhoto(
        villagePhotoId: json["village_photo_id"],
        photoPath: json["photo_path"],
      );

  // Method to convert VillagePhoto to Map
  Map<String, dynamic> toMap() => {
        "village_photo_id": villagePhotoId,
        "photo_path": photoPath,
      };
}
