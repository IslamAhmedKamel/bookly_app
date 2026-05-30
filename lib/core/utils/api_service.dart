import 'package:dio/dio.dart';

class ApiService {
  static const kBaseUrl = "https://www.googleapis.com/books/v1/volumes?";
  static const endPoint =
      "q=arabian+nights&key=AIzaSyDizIQICxTIKz_hAQ5vufv422IoGk0gYVg";
  Future<Map<String, dynamic>> get() async {
    Response response = await Dio().get("$kBaseUrl$endPoint");
    return response.data;
  }
}
