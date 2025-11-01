import 'dart:convert';
import 'dart:developer';

import 'package:personal_info_manager/core/api_client.dart';

import 'package:personal_info_manager/feature/manage_personal_info/data/models/personal_info_model.dart';
import 'package:personal_info_manager/feature/manage_personal_info/data/models/role_model.dart';

class PersonalInfoSource {
  final ApiClient client;
  PersonalInfoSource(this.client);

  Future<List<PersonalInfoModel>> fetchPersonalInfo() async {
    final response = await client.get('personnel-details');
    log('PERSONAL DETAILS FETCH');
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final List data = jsonData['data'];
      if (jsonData["status"] == true) {
        List<PersonalInfoModel> personalInfoList = data
            .map((item) => PersonalInfoModel.fromJson(item))
            .toList();

        return personalInfoList;
      } else {
        throw Exception(jsonData["message"]);
      }
    } else {
      throw Exception(
        "Failed to fetch personal details: ${response.statusCode}",
      );
    }
  }

  Future<List<RoleModel>> fetchRoles() async {
    final response = await client.get('roles/apiary-roles');
    log('ROLE FETCH');
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      final List jsonData = jsonDecode(response.body);

      List<RoleModel> roleList = jsonData
          .map((item) => RoleModel.fromJson(item))
          .toList();

      return roleList;
    } else {
      throw Exception("Failed to fetch role details: ${response.statusCode}");
    }
  }

  Future<bool> saveDeatils(Map<String,dynamic> saveData) async {
   try {
      final response = await client.post('personnel-details/add',saveData);
    log('SAVE DETAILS');
    log(response.statusCode.toString());
    log(response.body.toString());
    if (response.statusCode == 200) {
     return true;
    } else {
      throw Exception("Failed to save details");
    }
   } catch (e) {
     throw Exception("Failed to save details");
   }
  }
}
