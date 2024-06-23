import 'dart:convert';

class MovieResponseModel {
  final String? status;
  final List<Movie>? data;

  MovieResponseModel({
    this.status,
    this.data,
  });

  factory MovieResponseModel.fromJson(String str) =>
      MovieResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MovieResponseModel.fromMap(Map<String, dynamic> json) {
    return MovieResponseModel(
      status: json["status"],
      data:
          (json["data"] as List?)?.map((x) => Movie.fromMap(x)).toList() ?? [],
    );
  }

  Map<String, dynamic> toMap() => {
        "status": status,
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };
}

class Movie {
  final int? id;
  final String? title;
  final int? genreId;
  final String? image;
  final String? description;
  final String? status;
  final String? video;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Movie({
    this.id,
    this.title,
    this.genreId,
    this.image,
    this.description,
    this.status,
    this.video,
    this.createdAt,
    this.updatedAt,
  });

  factory Movie.fromJson(String str) => Movie.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Movie.fromMap(Map<String, dynamic> json) {
    return Movie(
      id: json["id"],
      title: json["title"],
      genreId: json["genre_id"],
      image: json["image"],
      description: json["description"],
      status: json["status"],
      video: json["video"],
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "genre_id": genreId,
        "image": image,
        "description": description,
        "status": status,
        "video": video,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
