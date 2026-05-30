import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://www.googleapis.com/books/v1/volumes?";
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await Dio().get("$_baseUrl$endPoint");
    return response.data;
  }
}
