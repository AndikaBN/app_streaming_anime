import 'dart:convert';

class GenreResponseModel {
    final String? status;
    final List<Genre>? data;

    GenreResponseModel({
        this.status,
        this.data,
    });

    factory GenreResponseModel.fromJson(String str) => GenreResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory GenreResponseModel.fromMap(Map<String, dynamic> json) => GenreResponseModel(
        status: json["status"],
        data: json["data"] == null ? [] : List<Genre>.from(json["data"]!.map((x) => Genre.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
    };
}

class Genre {
    final int? id;
    final String? name;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    Genre({
        this.id,
        this.name,
        this.createdAt,
        this.updatedAt,
    });

    factory Genre.fromJson(String str) => Genre.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Genre.fromMap(Map<String, dynamic> json) => Genre(
        id: json["id"],
        name: json["name"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
