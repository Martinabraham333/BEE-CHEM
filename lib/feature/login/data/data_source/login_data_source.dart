import 'dart:convert';
import 'dart:developer';

import 'package:personal_info_manager/core/api_client.dart';
import 'package:personal_info_manager/core/app_strings.dart';
import 'package:personal_info_manager/feature/login/data/models/user_model.dart';

class LoginDataSource {
  final ApiClient client;
  LoginDataSource(this.client);

  Future<UserModel> login(String username, String password) async {
    final response = await client.post('login', {
      "email": username,
      "password": password,
      "mob_user": "1",
    });
    log('Login');
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
    
      if (jsonData["status"] == true) {
        AppStrings.tocken = jsonData["access_token"];
     
        return UserModel.fromJson(jsonData["user"]);
      } else {
        throw Exception(jsonData["message"]);
      }
    } else {
      throw Exception("Failed to login: ${response.statusCode}");
    }
  }
}
