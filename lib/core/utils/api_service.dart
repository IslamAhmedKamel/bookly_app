import 'package:dio/dio.dart';

class ApiService {
  Future<Map<String, dynamic>> get({
    required String baseUrl,
    required String endPoint,
  }) async {
    Response response = await Dio().get("$baseUrl$endPoint");
    return response.data;
  }
}
