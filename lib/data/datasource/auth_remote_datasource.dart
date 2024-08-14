import 'package:app_stream_anime/data/model/response/auth_response_model.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;

import '../../constant/variables.dart';
import '../localDatasource/auth_local_datasource.dart';

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(
      String email, String password) async {
    final url = Uri.parse("${Variables.baseUrl}/api/login");
    final response = await http.post(
      url,
      body: {
        "email": email,
        "password": password,
      },
    );
    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return const Left("Login failed");
    }
  }

  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse("${Variables.baseUrl}/api/logout");
    final response = await http.post(
      url,
      headers: {
        "Authorization": "Bearer ${authData.token}",
        "accept": "application/json",
        "Content-Type": "application/json",
      },
    );

    if (response.statusCode == 200) {
      return const Right("Logout success");
    } else {
      return const Left("Logout failed");
    }
  }

  Future<Either<String, AuthResponseModel>> register(
    String name,
    String email,
    String password,
  ) async {
    final url = Uri.parse("${Variables.baseUrl}/api/register");
    final response = await http.post(url, body: {
      "name": name,
      "email": email,
      "password": password,
    });

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return const Left("Register Failed");
    }
  }
}
