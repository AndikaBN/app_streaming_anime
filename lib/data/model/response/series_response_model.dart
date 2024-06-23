import 'dart:convert';

class SeriesResponseModel {
    final String? status;
    final List<Series>? data;

    SeriesResponseModel({
        this.status,
        this.data,
    });

    factory SeriesResponseModel.fromJson(String str) => SeriesResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SeriesResponseModel.fromMap(Map<String, dynamic> json) => SeriesResponseModel(
        status: json["status"],
        data: json["data"] == null ? [] : List<Series>.from(json["data"]!.map((x) => Series.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
    };
}

class Series {
    final int? id;
    final String? title;
    final int? genreId;
    final dynamic image;
    final String? description;
    final String? status;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    Series({
        this.id,
        this.title,
        this.genreId,
        this.image,
        this.description,
        this.status,
        this.createdAt,
        this.updatedAt,
    });

    factory Series.fromJson(String str) => Series.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Series.fromMap(Map<String, dynamic> json) => Series(
        id: json["id"],
        title: json["title"],
        genreId: json["genre_id"],
        image: json["image"],
        description: json["description"],
        status: json["status"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "genre_id": genreId,
        "image": image,
        "description": description,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
