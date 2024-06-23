import 'package:shared_preferences/shared_preferences.dart';

import '../model/response/auth_response_model.dart';

class AuthLocalDatasource {
  Future<void>saveAuthData(AuthResponseModel authResponseModel) async {
    // save auth data to local storage
    final pref = await SharedPreferences.getInstance();
    await pref.setString('auth_data', authResponseModel.toJson());
  }

  Future<void>removeAuthData() async {
    // remove auth data from local storage
    final pref = await SharedPreferences.getInstance();
    await pref.remove('auth_data');
  }

  // get auth data from local storage
  Future<AuthResponseModel> getAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString('auth_data');
    
    return AuthResponseModel.fromJson(authData!);
  }

  // is auth data exist in local storage
  Future<bool> isAuthDataExist() async {
    final pref = await SharedPreferences.getInstance();
    return pref.containsKey('auth_data');
  }
}