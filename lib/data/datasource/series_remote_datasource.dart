import 'package:app_stream_anime/constant/variables.dart';
import 'package:app_stream_anime/data/model/response/series_response_model.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;

import '../localDatasource/auth_local_datasource.dart';

class SeriesRemoteDatasource{
  Future<Either<String, SeriesResponseModel>> getSeries() async {
    final url = Uri.parse("${Variables.baseUrl}/api/anime_series");
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return Right(SeriesResponseModel.fromJson(response.body));
    } else {
      return const Left("Get series failed");
    }
  }

  //create new method to delete series
  Future<Either<String, String>> deleteSeries(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse("${Variables.baseUrl}/api/anime_series/$id");
    final response = await http.delete(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return const Right("Delete series success");
    } else {
      return const Left("Delete series failed");
    }
  }

  //create new method to add series
  Future<Either<String, String>> addSeries(
    String title,
    int genreId,
    String image,
    String description,
    String status,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse("${Variables.baseUrl}/api/anime_series");
    final response = await http.post(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
      body: {
        "title": title,
        "genre_id": genreId.toString(),
        "image": image,
        "description": description,
        "status": status,
      },
    );

    if (response.statusCode == 200) {
      return const Right("Add series success");
    } else {
      return const Left("Add series failed");
    }
  }

  //create new method to update series
  Future<Either<String, String>> updateSeries(
    int id,
    String title,
    int genreId,
    String image,
    String description,
    String status,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse("${Variables.baseUrl}/api/anime_series/$id");
    final response = await http.put(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
      body: {
        "title": title,
        "genre_id": genreId.toString(),
        "image": image,
        "description": description,
        "status": status,
      },
    );

    if (response.statusCode == 200) {
      return const Right("Update series success");
    } else {
      return const Left("Update series failed");
    }
  }
}
