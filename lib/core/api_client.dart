import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:personal_info_manager/core/app_strings.dart';

class ApiClient {
  final String baseUrl = 'https://beechem.ishtech.live/api/';

  Future<http.Response> post(String endPoint, Map<String, dynamic> data) async {
    final url = Uri.parse(baseUrl + endPoint);
    log("POST: $url");

    try {
      final response = await http.post(
        url,
        body: data,
        headers: {'Accept': 'application/json'},
      );
      return response;
    } catch (e) {
      return http.Response(jsonEncode({'error': 'Unexpected error occurred'}),500);
    }
  }

  Future<http.Response> get(String endPoint) async {
    final url = Uri.parse(baseUrl + endPoint);
    log("GET: $url");

    try {
      final response = await http.get(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${AppStrings.tocken}',
        },
      );
      return response;
    } catch (e) {
      log("❌ GET Error: $e");
       return http.Response(jsonEncode({'error': 'Unexpected error occurred'}),500);
    }
  }
}
