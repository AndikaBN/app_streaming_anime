import 'package:app_stream_anime/constant/variables.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../localDatasource/auth_local_datasource.dart';
import '../model/response/movie_response_model.dart';

class MovieRemoteDatasource {
  Future<Either<String, MovieResponseModel>> getMovies() async {
    final url = Uri.parse("${Variables.baseUrl}/api/anime_movies");
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return Right(MovieResponseModel.fromJson(response.body));
    } else {
      return const Left("Get movies failed");
    }
  }

  //create new method to delete movie
  Future<Either<String, String>> deleteMovie(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse("${Variables.baseUrl}/api/anime_movies/$id");
    final response = await http.delete(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return const Right("Delete movie success");
    } else {
      return const Left("Delete movie failed");
    }
  }

  //create new method to add movie
  Future<Either<String, String>> addMovie(
    String title,
    String description,
    int genreId,
    String image,
    String status,
    String video,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse("${Variables.baseUrl}/api/anime_movies");
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
        "video": video,
      },
    );

    if (response.statusCode == 200) {
      return const Right("Add movie success");
    } else {
      return const Left("Add movie failed");
    }
  }

  //create new method to update movie
  Future<Either<String, String>> updateMovie(
    int id,
    String title,
    String description,
    int genreId,
    String image,
    String status,
    String video,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse("${Variables.baseUrl}/api/anime_movies/$id");
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
        "video": video,
      },
    );

    if (response.statusCode == 200) {
      return const Right("Update movie success");
    } else {
      return const Left("Update movie failed");
    }
  }
}
