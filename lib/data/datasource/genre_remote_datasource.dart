import 'package:app_stream_anime/constant/variables.dart';
import 'package:app_stream_anime/data/model/response/genre_response_model.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import '../localDatasource/auth_local_datasource.dart';

class GenreRemoteDatasource {
  Future<Either<String, GenreResponseModel>> getGenre() async {
    final url = Uri.parse("${Variables.baseUrl}/api/genres");
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return Right(GenreResponseModel.fromJson(response.body));
    } else {
      return const Left("Get genre failed");
    }
  }

  Future<Either<String, String>> addGenre(String name) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse("${Variables.baseUrl}/api/genres");
    final response = await http.post(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
      body: {
        "name": name,
      },
    );

    if (response.statusCode == 200) {
      return const Right("Add genre success");
    } else {
      return const Left("Add genre failed");
    }
  }

  Future<Either<String, String>> deleteGenre(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse("${Variables.baseUrl}/api/genres/$id");
    final response = await http.delete(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return const Right("Delete genre success");
    } else {
      return const Left("Delete genre failed");
    }
  }

  Future<Either<String, String>> updateGenre(int id, String name) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse("${Variables.baseUrl}/api/genres/$id");
    final response = await http.put(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
      body: {
        "name": name,
      },
    );

    if (response.statusCode == 200) {
      return const Right("Update genre success");
    } else {
      return const Left("Update genre failed");
    }
  }
}
