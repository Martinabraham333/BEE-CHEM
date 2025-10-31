import 'dart:convert';
import 'dart:developer';

import 'package:personal_info_manager/core/api_client.dart';

import 'package:personal_info_manager/feature/manage_personal_info/data/models/personal_info_model.dart';

class PersonalInfoSource {
  final ApiClient client;
  PersonalInfoSource(this.client);

  Future<List<PersonalInfoModel>> fetchPersonalInfo() async {
    final response = await client.get('personnel-details');
    log('PERSONAL DETAILS FETCH');
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      final  jsonData = jsonDecode(response.body);
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
      throw Exception("Failed to fetch personal details: ${response.statusCode}");
    }
  }
}
