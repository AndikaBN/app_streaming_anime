import 'package:app_stream_anime/constant/variables.dart';
import 'package:app_stream_anime/data/model/response/episodes_response_model.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;

import '../localDatasource/auth_local_datasource.dart';

class EpisodeRemoteDatasource {
  Future<Either<String, EpisodesResponseModel>> getEpisode(
    int seriesId,
  ) async {
    //http://192.168.18.66:8000/api/anime_series/1/episodes
    final url =
        Uri.parse("${Variables.baseUrl}/api/anime_series/$seriesId/episodes");
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return Right(EpisodesResponseModel.fromJson(response.body));
    } else {
      return const Left("Get episode failed");
    }
  }

  //create new method to delete episode
  Future<Either<String, String>> deleteEpisode(
      int seriesId, int episodeId) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse(
        "${Variables.baseUrl}/api/anime_series/$seriesId/episodes/$episodeId");
    final response = await http.delete(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return const Right("Delete episode success");
    } else {
      return const Left("Delete episode failed");
    }
  }

  //create new method to add episode
  Future<Either<String, String>> addEpisode(
    int seriesId,
    String nomorEpisode,
    String title,
    String video,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url =
        Uri.parse("${Variables.baseUrl}/api/anime_series/$seriesId/episodes");
    final response = await http.post(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
      body: {
        "anime_series_id": seriesId.toString(),
        "nomor_episode": nomorEpisode,
        "title": title,
        "video": video,
      },
    );

    if (response.statusCode == 200) {
      return const Right("Add episode success");
    } else {
      return const Left("Add episode failed");
    }
  }

  //create new method to update episode
  Future<Either<String, String>> updateEpisode(
    int seriesId,
    int episodeId,
    String nomorEpisode,
    String title,
    String video,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse(
        "${Variables.baseUrl}/api/anime_series/$seriesId/episodes/$episodeId");
    final response = await http.put(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
      body: {
        "anime_series_id": seriesId.toString(),
        "nomor_episode": nomorEpisode.toString(),
        "title": title,
        "video": video,
      },
    );

    if (response.statusCode == 200) {
      return const Right("Update episode success");
    } else {
      return const Left("Update episode failed");
    }
  }
}
