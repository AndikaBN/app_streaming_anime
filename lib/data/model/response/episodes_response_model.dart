import 'dart:convert';

class EpisodesResponseModel {
    final String? status;
    final List<Episodes>? data;

    EpisodesResponseModel({
        this.status,
        this.data,
    });

    factory EpisodesResponseModel.fromJson(String str) => EpisodesResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory EpisodesResponseModel.fromMap(Map<String, dynamic> json) => EpisodesResponseModel(
        status: json["status"],
        data: json["data"] == null ? [] : List<Episodes>.from(json["data"]!.map((x) => Episodes.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
    };
}

class Episodes {
    final int? id;
    final int? animeSeriesId;
    final String? nomorEpisode;
    final String? title;
    final String? video;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    Episodes({
        this.id,
        this.animeSeriesId,
        this.nomorEpisode,
        this.title,
        this.video,
        this.createdAt,
        this.updatedAt,
    });

    factory Episodes.fromJson(String str) => Episodes.fromMap(json.decode(str));

  get seriesId => null;

    String toJson() => json.encode(toMap());

    factory Episodes.fromMap(Map<String, dynamic> json) => Episodes(
        id: json["id"],
        animeSeriesId: json["anime_series_id"],
        nomorEpisode: json["nomor_episode"],
        title: json["title"],
        video: json["video"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "anime_series_id": animeSeriesId,
        "nomor_episode": nomorEpisode,
        "title": title,
        "video": video,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
