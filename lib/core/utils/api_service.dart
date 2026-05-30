import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://openlibrary.org/search.json?";
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await Dio().get("$_baseUrl$endPoint");
    return response.data;
  }
}
